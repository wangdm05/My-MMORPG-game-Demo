#if !UNITY_WINRT || UNITY_EDITOR || UNITY_WP8
#region License
// Copyright (c) 2007 James Newton-King
//
// Permission is hereby granted, free of charge, to any person
// obtaining a copy of this software and associated documentation
// files (the "Software"), to deal in the Software without
// restriction, including without limitation the rights to use,
// copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following
// conditions:
//
// The above copyright notice and this permission notice shall be
// included in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
// OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
// HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
// WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
// OTHER DEALINGS IN THE SOFTWARE.
#endregion

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using Recast.Json.ObservableSupport;
using Recast.Json.Utilities;
using System.Collections;
using System.Diagnostics;
using System.Globalization;
using System.ComponentModel;
using System.Collections.Specialized;
using AddingNewEventArgs = Recast.Json.ObservableSupport.AddingNewEventArgs;
using AddingNewEventHandler = Recast.Json.ObservableSupport.AddingNewEventHandler;

namespace Recast.Json.Linq
{
  /// <summary>
  /// Represents a token that can contain other tokens.
  /// </summary>
  public abstract class JContainer : JToken, IList<JToken>
#if !(UNITY_ANDROID || (UNITY_IOS || UNITY_IPHONE) || UNITY_WP8 || (UNITY_WINRT && !UNITY_EDITOR))
, ITypedList, IBindingList
#else
        , IList
#endif
  {
#if !(UNITY_ANDROID || (UNITY_IOS || UNITY_IPHONE) || UNITY_WP8 || (UNITY_WINRT && !UNITY_EDITOR))
      /// <summary>
    /// Occurs when the list changes or an item in the list changes.
    /// </summary>
    public event ListChangedEventHandler ListChanged;

    /// <summary>
    /// Occurs before an item is added to the collection.
    /// </summary>
    public event AddingNewEventHandler AddingNew;
#endif

    /// <summary>
    /// Gets the container's children tokens.
    /// </summary>
    /// <value>The container's children tokens.</value>
    protected abstract IList<JToken> ChildrenTokens { get; }

    private object _syncRoot;
#pragma warning disable 649
    private bool _busy;
#pragma warning restore 649

    internal JContainer()
    {
    }

    internal JContainer(JContainer other)
    {
      ValidationUtils.ArgumentNotNull(other, "c");

      foreach (JToken child in other)
      {
        Add(child);
      }
    }

    internal void CheckReentrancy()
    {
      if (_busy)
        throw new InvalidOperationException("Cannot change {0} during a collection change event.".FormatWith(CultureInfo.InvariantCulture, GetType()));
    }

#if !(UNITY_ANDROID || (UNITY_IOS || UNITY_IPHONE) || UNITY_WP8 || (UNITY_WINRT && !UNITY_EDITOR))
    /// <summary>
    /// Raises the <see cref="AddingNew"/> event.
    /// </summary>
    /// <param name="e">The <see cref="System.ComponentModel.AddingNewEventArgs"/> instance containing the event data.</param>
    protected virtual void OnAddingNew(AddingNewEventArgs e)
    {
      AddingNewEventHandler handler = AddingNew;
      if (handler != null)
        handler(this, e);
    }

    /// <summary>
    /// Raises the <see cref="ListChanged"/> event.
    /// </summary>
    /// <param name="e">The <see cref="ListChangedEventArgs"/> instance containing the event data.</param>
    protected virtual void OnListChanged(ListChangedEventArgs e)
    {
      ListChangedEventHandler handler = ListChanged;

      if (handler != null)
      {
        _busy = true;
        try
        {
          handler(this, e);
        }
        finally
        {
          _busy = false;
        }
      }
    }
#endif

	/// <summary>
    /// Gets a value indicating whether this token has childen tokens.
    /// </summary>
    /// <value>
    /// 	<c>true</c> if this token has child values; otherwise, <c>false</c>.
    /// </value>
    public override bool HasValues
    {
      get { return ChildrenTokens.Count > 0; }
    }

    internal bool ContentsEqual(JContainer container)
    {
      JToken t1 = First;
      JToken t2 = container.First;

      if (t1 == t2)
        return true;

      do
      {
        if (t1 == null && t2 == null)
          return true;

        if (t1 != null && t2 != null && t1.DeepEquals(t2))
        {
          t1 = (t1 != Last) ? t1.Next : null;
          t2 = (t2 != container.Last) ? t2.Next : null;
        }
        else
        {
          return false;
        }
      }
      while (true);
    }

    /// <summary>
    /// Get the first child token of this token.
    /// </summary>
    /// <value>
    /// A <see cref="JToken"/> containing the first child token of the <see cref="JToken"/>.
    /// </value>
    public override JToken First
    {
      get { return ChildrenTokens.FirstOrDefault(); }
    }

    /// <summary>
    /// Get the last child token of this token.
    /// </summary>
    /// <value>
    /// A <see cref="JToken"/> containing the last child token of the <see cref="JToken"/>.
    /// </value>
    public override JToken Last
    {
      get { return ChildrenTokens.LastOrDefault(); }
    }

    /// <summary>
    /// Returns a collection of the child tokens of this token, in document order.
    /// </summary>
    /// <returns>
    /// An <see cref="IEnumerable{T}"/> of <see cref="JToken"/> containing the child tokens of this <see cref="JToken"/>, in document order.
    /// </returns>
    public override JEnumerable<JToken> Children()
    {
      return new JEnumerable<JToken>(ChildrenTokens);
    }

    /// <summary>
    /// Returns a collection of the child values of this token, in document order.
    /// </summary>
    /// <typeparam name="T">The type to convert the values to.</typeparam>
    /// <returns>
    /// A <see cref="IEnumerable{T}"/> containing the child values of this <see cref="JToken"/>, in document order.
    /// </returns>
    public override IEnumerable<T> Values<T>()
    {
      return ChildrenTokens.Convert<JToken, T>();
    }

    /// <summary>
    /// Returns a collection of the descendant tokens for this token in document order.
    /// </summary>
    /// <returns>An <see cref="IEnumerable{JToken}"/> containing the descendant tokens of the <see cref="JToken"/>.</returns>
    public IEnumerable<JToken> Descendants()
    {
      foreach (JToken o in ChildrenTokens)
      {
        yield return o;
        JContainer c = o as JContainer;
        if (c != null)
        {
          foreach (JToken d in c.Descendants())
          {
            yield return d;
          }
        }
      }
    }

    internal bool IsMultiContent(object content)
    {
      return (content is IEnumerable && !(content is string) && !(content is JToken) && !(content is byte[]));
    }

    internal JToken EnsureParentToken(JToken item)
    {
      if (item == null)
        return new JValue((object) null);

      if (item.Parent != null)
      {
        item = item.CloneToken();
      }
      else
      {
        // check whether attempting to add a token to itself
        JContainer parent = this;
        while (parent.Parent != null)
        {
          parent = parent.Parent;
        }
        if (item == parent)
        {
          item = item.CloneToken();
        }
      }
      return item;
    }

    private class JTokenReferenceEqualityComparer : IEqualityComparer<JToken>
      {
      public static readonly JTokenReferenceEqualityComparer Instance = new JTokenReferenceEqualityComparer();

      public bool Equals(JToken x, JToken y)
        {
        return ReferenceEquals(x, y);
      }

      public int GetHashCode(JToken obj)
      {
        if (obj == null)
          return 0;

        return obj.GetHashCode();
      }
    }

    internal int IndexOfItem(JToken item)
    {
      return ChildrenTokens.IndexOf(item, JTokenReferenceEqualityComparer.Instance);
    }

    internal virtual void InsertItem(int index, JToken item)
    {
      if (index > ChildrenTokens.Count)
        throw new ArgumentOutOfRangeException("index", "Index must be within the bounds of the List.");

      CheckReentrancy();

      item = EnsureParentToken(item);

      JToken previous = (index == 0) ? null : ChildrenTokens[index - 1];
      // haven't inserted new token yet so next token is still at the inserting index
      JToken next = (index == ChildrenTokens.Count) ? null : ChildrenTokens[index];

      ValidateToken(item, null);

      item.Parent = this;

      item.Previous = previous;
      if (previous != null)
        previous.Next = item;

      item.Next = next;
      if (next != null)
        next.Previous = item;

      ChildrenTokens.Insert(index, item);

#if !(UNITY_ANDROID || (UNITY_IOS || UNITY_IPHONE) || UNITY_WP8 || (UNITY_WINRT && !UNITY_EDITOR))
      if (ListChanged != null)
        OnListChanged(new ListChangedEventArgs(ListChangedType.ItemAdded, index));
#endif
	}

    internal virtual void RemoveItemAt(int index)
    {
      if (index < 0)
        throw new ArgumentOutOfRangeException("index", "Index is less than 0.");
      if (index >= ChildrenTokens.Count)
        throw new ArgumentOutOfRangeException("index", "Index is equal to or greater than Count.");

      CheckReentrancy();

      JToken item = ChildrenTokens[index];
      JToken previous = (index == 0) ? null : ChildrenTokens[index - 1];
      JToken next = (index == ChildrenTokens.Count - 1) ? null : ChildrenTokens[index + 1];

      if (previous != null)
        previous.Next = next;
      if (next != null)
        next.Previous = previous;

      item.Parent = null;
      item.Previous = null;
      item.Next = null;

      ChildrenTokens.RemoveAt(index);

#if !(UNITY_ANDROID || (UNITY_IOS || UNITY_IPHONE) || UNITY_WP8 || (UNITY_WINRT && !UNITY_EDITOR))
      OnListChanged(new ListChangedEventArgs(ListChangedType.ItemDeleted, index));
#endif
	}

    internal virtual bool RemoveItem(JToken item)
    {
      int index = IndexOfItem(item);
      if (index >= 0)
      {
        RemoveItemAt(index);
      return true;
    }

      return false;
    }

    internal virtual JToken GetItem(int index)
    {
      return ChildrenTokens[index];
    }

    internal virtual void SetItem(int index, JToken item)
    {
      if (index < 0)
        throw new ArgumentOutOfRangeException("index", "Index is less than 0.");
      if (index >= ChildrenTokens.Count)
        throw new ArgumentOutOfRangeException("index", "Index is equal to or greater than Count.");

      JToken existing = ChildrenTokens[index];

      if (IsTokenUnchanged(existing, item))
        return;

      CheckReentrancy();

      item = EnsureParentToken(item);

      ValidateToken(item, existing);

      JToken previous = (index == 0) ? null : ChildrenTokens[index - 1];
      JToken next = (index == ChildrenTokens.Count - 1) ? null : ChildrenTokens[index + 1];

      item.Parent = this;

      item.Previous = previous;
      if (previous != null)
        previous.Next = item;

      item.Next = next;
      if (next != null)
        next.Previous = item;

      ChildrenTokens[index] = item;

      existing.Parent = null;
      existing.Previous = null;
      existing.Next = null;

#if !(UNITY_ANDROID || (UNITY_IOS || UNITY_IPHONE) || UNITY_WP8 || (UNITY_WINRT && !UNITY_EDITOR))
      OnListChanged(new ListChangedEventArgs(ListChangedType.ItemChanged, index));
#endif
	}

    internal virtual void ClearItems()
    {
      CheckReentrancy();

      foreach (JToken item in ChildrenTokens)
      {
        item.Parent = null;
        item.Previous = null;
        item.Next = null;
      }

      ChildrenTokens.Clear();

#if !(UNITY_ANDROID || (UNITY_IOS || UNITY_IPHONE) || UNITY_WP8 || (UNITY_WINRT && !UNITY_EDITOR))
      OnListChanged(new ListChangedEventArgs(ListChangedType.Reset, -1));
#endif
	}

    internal virtual void ReplaceItem(JToken existing, JToken replacement)
    {
      if (existing == null || existing.Parent != this)
        return;

      int index = IndexOfItem(existing);
      SetItem(index, replacement);
    }

    internal virtual bool ContainsItem(JToken item)
    {
      return (IndexOfItem(item) != -1);
    }

    internal virtual void CopyItemsTo(Array array, int arrayIndex)
    {
      if (array == null)
        throw new ArgumentNullException("array");
      if (arrayIndex < 0)
        throw new ArgumentOutOfRangeException("arrayIndex", "arrayIndex is less than 0.");
      if (arrayIndex >= array.Length)
        throw new ArgumentException("arrayIndex is equal to or greater than the length of array.");
      if (Count > array.Length - arrayIndex)
        throw new ArgumentException("The number of elements in the source JObject is greater than the available space from arrayIndex to the end of the destination array.");

      int index = 0;
      foreach (JToken token in ChildrenTokens)
      {
        array.SetValue(token, arrayIndex + index);
        index++;
      }
    }

    internal static bool IsTokenUnchanged(JToken currentValue, JToken newValue)
    {
      JValue v1 = currentValue as JValue;
      if (v1 != null)
      {
        // null will get turned into a JValue of type null
        if (v1.Type == JTokenType.Null && newValue == null)
          return true;

        return v1.Equals(newValue);
      }

      return false;
    }

    internal virtual void ValidateToken(JToken o, JToken existing)
    {
      ValidationUtils.ArgumentNotNull(o, "o");

      if (o.Type == JTokenType.Property)
        throw new ArgumentException("Can not add {0} to {1}.".FormatWith(CultureInfo.InvariantCulture, o.GetType(), GetType()));
    }

    /// <summary>
    /// Adds the specified content as children of this <see cref="JToken"/>.
    /// </summary>
    /// <param name="content">The content to be added.</param>
    public virtual void Add(object content)
    {
      AddInternal(ChildrenTokens.Count, content);
    }

    /// <summary>
    /// Adds the specified content as the first children of this <see cref="JToken"/>.
    /// </summary>
    /// <param name="content">The content to be added.</param>
    public void AddFirst(object content)
    {
      AddInternal(0, content);
    }

    internal void AddInternal(int index, object content)
    {
      if (IsMultiContent(content))
      {
        IEnumerable enumerable = (IEnumerable)content;

        int multiIndex = index;
        foreach (object c in enumerable)
        {
          AddInternal(multiIndex, c);
          multiIndex++;
        }
      }
      else
      {
        JToken item = CreateFromContent(content);

        InsertItem(index, item);
      }
    }

    internal JToken CreateFromContent(object content)
    {
      if (content is JToken)
        return (JToken)content;
      
      return new JValue(content);
    }

    /// <summary>
    /// Creates an <see cref="JsonWriter"/> that can be used to add tokens to the <see cref="JToken"/>.
    /// </summary>
    /// <returns>An <see cref="JsonWriter"/> that is ready to have content written to it.</returns>
    public JsonWriter CreateWriter()
    {
      return new JTokenWriter(this);
    }

    /// <summary>
    /// Replaces the children nodes of this token with the specified content.
    /// </summary>
    /// <param name="content">The content.</param>
    public void ReplaceAll(object content)
    {
      ClearItems();
      Add(content);
    }

    /// <summary>
    /// Removes the child nodes from this token.
    /// </summary>
    public void RemoveAll()
    {
      ClearItems();
    }

    internal void ReadTokenFrom(JsonReader r)
    {
      int startDepth = r.Depth;

      if (!r.Read())
        throw new Exception("Error reading {0} from JsonReader.".FormatWith(CultureInfo.InvariantCulture, GetType().Name));

      ReadContentFrom(r);

      int endDepth = r.Depth;

      if (endDepth > startDepth)
        throw new Exception("Unexpected end of content while loading {0}.".FormatWith(CultureInfo.InvariantCulture, GetType().Name));
    }

    internal void ReadContentFrom(JsonReader r)
    {
      ValidationUtils.ArgumentNotNull(r, "r");
      IJsonLineInfo lineInfo = r as IJsonLineInfo;

      JContainer parent = this;

      do
      {
        if (parent is JProperty && ((JProperty)parent).Value != null)
        {
          if (parent == this)
            return;

          parent = parent.Parent;
        }

        switch (r.TokenType)
        {
          case JsonToken.None:
            // new reader. move to actual content
            break;
          case JsonToken.StartArray:
            JArray a = new JArray();
            a.SetLineInfo(lineInfo);
            parent.Add(a);
            parent = a;
            break;

          case JsonToken.EndArray:
            if (parent == this)
              return;

            parent = parent.Parent;
            break;
          case JsonToken.StartObject:
            JObject o = new JObject();
            o.SetLineInfo(lineInfo);
            parent.Add(o);
            parent = o;
            break;
          case JsonToken.EndObject:
            if (parent == this)
              return;

            parent = parent.Parent;
            break;
          case JsonToken.StartConstructor:
            JConstructor constructor = new JConstructor(r.Value.ToString());
            constructor.SetLineInfo(constructor);
            parent.Add(constructor);
            parent = constructor;
            break;
          case JsonToken.EndConstructor:
            if (parent == this)
              return;

            parent = parent.Parent;
            break;
          case JsonToken.String:
          case JsonToken.Integer:
          case JsonToken.Float:
          case JsonToken.Date:
          case JsonToken.Boolean:
          case JsonToken.Bytes:
            JValue v = new JValue(r.Value);
            v.SetLineInfo(lineInfo);
            parent.Add(v);
            break;
          case JsonToken.Comment:
            v = JValue.CreateComment(r.Value.ToString());
            v.SetLineInfo(lineInfo);
            parent.Add(v);
            break;
          case JsonToken.Null:
            v = new JValue(null, JTokenType.Null);
            v.SetLineInfo(lineInfo);
            parent.Add(v);
            break;
          case JsonToken.Undefined:
            v = new JValue(null, JTokenType.Undefined);
            v.SetLineInfo(lineInfo);
            parent.Add(v);
            break;
          case JsonToken.PropertyName:
            string propertyName = r.Value.ToString();
            JProperty property = new JProperty(propertyName);
            property.SetLineInfo(lineInfo);
            JObject parentObject = (JObject) parent;
            // handle multiple properties with the same name in JSON
            JProperty existingPropertyWithName = parentObject.Property(propertyName);
            if (existingPropertyWithName == null)
              parent.Add(property);
            else
              existingPropertyWithName.Replace(property);
            parent = property;
            break;
          default:
            throw new InvalidOperationException("The JsonReader should not be on a token of type {0}.".FormatWith(CultureInfo.InvariantCulture, r.TokenType));
        }
      }
      while (r.Read());
    }

    internal int ContentsHashCode()
    {
      int hashCode = 0;
      foreach (JToken item in ChildrenTokens)
      {
        hashCode ^= item.GetDeepHashCode();
      }
      return hashCode;
    }

#if !(UNITY_ANDROID || (UNITY_IOS || UNITY_IPHONE) || UNITY_WP8)
    string ITypedList.GetListName(PropertyDescriptor[] listAccessors)
    {
      return string.Empty;
    }

    PropertyDescriptorCollection ITypedList.GetItemProperties(PropertyDescriptor[] listAccessors)
    {
      ICustomTypeDescriptor d = First as ICustomTypeDescriptor;
      if (d != null)
        return d.GetProperties();

      return null;
    }
#endif

	#region IList<JToken> Members

	int IList<JToken>.IndexOf(JToken item)
    {
      return IndexOfItem(item);
    }

    void IList<JToken>.Insert(int index, JToken item)
    {
      InsertItem(index, item);
    }

    void IList<JToken>.RemoveAt(int index)
    {
      RemoveItemAt(index);
    }

    JToken IList<JToken>.this[int index]
    {
      get { return GetItem(index); }
      set { SetItem(index, value); }
    }

    #endregion

    #region ICollection<JToken> Members

    void ICollection<JToken>.Add(JToken item)
    {
      Add(item);
    }

    void ICollection<JToken>.Clear()
    {
      ClearItems();
    }

    bool ICollection<JToken>.Contains(JToken item)
    {
      return ContainsItem(item);
    }

    void ICollection<JToken>.CopyTo(JToken[] array, int arrayIndex)
    {
      CopyItemsTo(array, arrayIndex);
    }

    bool ICollection<JToken>.IsReadOnly
    {
      get { return false; }
    }

    bool ICollection<JToken>.Remove(JToken item)
    {
      return RemoveItem(item);
    }

    #endregion

    private JToken EnsureValue(object value)
    {
      if (value == null)
        return null;

      if (value is JToken)
        return (JToken) value;

      throw new ArgumentException("Argument is not a JToken.");
    }

    #region IList Members

    int IList.Add(object value)
    {
      Add(EnsureValue(value));
      return Count - 1;
    }

    void IList.Clear()
    {
      ClearItems();
    }

    bool IList.Contains(object value)
    {
      return ContainsItem(EnsureValue(value));
    }

    int IList.IndexOf(object value)
    {
      return IndexOfItem(EnsureValue(value));
    }

    void IList.Insert(int index, object value)
    {
      InsertItem(index, EnsureValue(value));
    }

    bool IList.IsFixedSize
    {
      get { return false; }
    }

    bool IList.IsReadOnly
    {
      get { return false; }
    }

    void IList.Remove(object value)
    {
      RemoveItem(EnsureValue(value));
    }

    void IList.RemoveAt(int index)
    {
      RemoveItemAt(index);
    }

    object IList.this[int index]
    {
      get { return GetItem(index); }
      set { SetItem(index, EnsureValue(value)); }
    }

    #endregion

    #region ICollection Members

    void ICollection.CopyTo(Array array, int index)
    {
      CopyItemsTo(array, index);
    }

    /// <summary>
    /// Gets the count of child JSON tokens.
    /// </summary>
    /// <value>The count of child JSON tokens</value>
    public int Count
    {
      get { return ChildrenTokens.Count; }
    }

    bool ICollection.IsSynchronized
    {
      get { return false; }
    }

    object ICollection.SyncRoot
    {
      get
      {
        if (_syncRoot == null)
          Interlocked.CompareExchange(ref _syncRoot, new object(), null);

        return _syncRoot;
      }

    }

    #endregion

    #region IBindingList Members

#if !(UNITY_ANDROID || (UNITY_IOS || UNITY_IPHONE) || UNITY_WP8)
    void IBindingList.AddIndex(PropertyDescriptor property)
    {
    }

    object IBindingList.AddNew()
    {
      AddingNewEventArgs args = new AddingNewEventArgs();
      OnAddingNew(args);

      if (args.NewObject == null)
        throw new Exception("Could not determine new value to add to '{0}'.".FormatWith(CultureInfo.InvariantCulture, GetType()));

      if (!(args.NewObject is JToken))
        throw new Exception("New item to be added to collection must be compatible with {0}.".FormatWith(CultureInfo.InvariantCulture, typeof (JToken)));

      JToken newItem = (JToken)args.NewObject;
      Add(newItem);

      return newItem;
    }

    bool IBindingList.AllowEdit
    {
      get { return true; }
    }

    bool IBindingList.AllowNew
    {
      get { return true; }
    }

    bool IBindingList.AllowRemove
    {
      get { return true; }
    }

    void IBindingList.ApplySort(PropertyDescriptor property, ListSortDirection direction)
    {
      throw new NotSupportedException();
    }

    int IBindingList.Find(PropertyDescriptor property, object key)
    {
      throw new NotSupportedException();
    }

    bool IBindingList.IsSorted
    {
      get { return false; }
    }

    void IBindingList.RemoveIndex(PropertyDescriptor property)
    {
    }

    void IBindingList.RemoveSort()
    {
      throw new NotSupportedException();
    }

    ListSortDirection IBindingList.SortDirection
    {
      get { return ListSortDirection.Ascending; }
    }

    PropertyDescriptor IBindingList.SortProperty
    {
      get { return null; }
    }

    bool IBindingList.SupportsChangeNotification
    {
      get { return true; }
    }

    bool IBindingList.SupportsSearching
    {
      get { return false; }
    }

    bool IBindingList.SupportsSorting
    {
      get { return false; }
    }
#endif

	#endregion
  }
}
#endif