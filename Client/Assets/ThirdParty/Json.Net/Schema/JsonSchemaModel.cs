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
using Recast.Json.Linq;
using Recast.Json.Utilities;

namespace Recast.Json.Schema
{
  internal class JsonSchemaModel
  {
    public bool Required { get; set; }
    public JsonSchemaType Type { get; set; }
    public int? MinimumLength { get; set; }
    public int? MaximumLength { get; set; }
    public double? DivisibleBy { get; set; }
    public double? Minimum { get; set; }
    public double? Maximum { get; set; }
    public bool ExclusiveMinimum { get; set; }
    public bool ExclusiveMaximum { get; set; }
    public int? MinimumItems { get; set; }
    public int? MaximumItems { get; set; }
    public IList<string> Patterns { get; set; }
    public IList<JsonSchemaModel> Items { get; set; }
    public IDictionary<string, JsonSchemaModel> Properties { get; set; }
    public IDictionary<string, JsonSchemaModel> PatternProperties { get; set; }
    public JsonSchemaModel AdditionalProperties { get; set; }
    public bool AllowAdditionalProperties { get; set; }
    public IList<JToken> Enum { get; set; }
    public JsonSchemaType Disallow { get; set; }

    public JsonSchemaModel()
    {
      Type = JsonSchemaType.Any;
      AllowAdditionalProperties = true;
      Required = false;
    }

    public static JsonSchemaModel Create(IList<JsonSchema> schemata)
    {
      JsonSchemaModel model = new JsonSchemaModel();

      foreach (JsonSchema schema in schemata)
      {
        Combine(model, schema);
      }

      return model;
    }

    private static void Combine(JsonSchemaModel model, JsonSchema schema)
    {
      // Version 3 of the Draft JSON Schema has the default value of Not Required
      model.Required = model.Required || (schema.Required ?? false);
      model.Type = model.Type & (schema.Type ?? JsonSchemaType.Any);

      model.MinimumLength = MathUtils.Max(model.MinimumLength, schema.MinimumLength);
      model.MaximumLength = MathUtils.Min(model.MaximumLength, schema.MaximumLength);

      // not sure what is the best way to combine divisibleBy
      model.DivisibleBy = MathUtils.Max(model.DivisibleBy, schema.DivisibleBy);

      model.Minimum = MathUtils.Max(model.Minimum, schema.Minimum);
      model.Maximum = MathUtils.Max(model.Maximum, schema.Maximum);
      model.ExclusiveMinimum = model.ExclusiveMinimum || (schema.ExclusiveMinimum ?? false);
      model.ExclusiveMaximum = model.ExclusiveMaximum || (schema.ExclusiveMaximum ?? false);

      model.MinimumItems = MathUtils.Max(model.MinimumItems, schema.MinimumItems);
      model.MaximumItems = MathUtils.Min(model.MaximumItems, schema.MaximumItems);
      model.AllowAdditionalProperties = model.AllowAdditionalProperties && schema.AllowAdditionalProperties;
      if (schema.Enum != null)
      {
        if (model.Enum == null)
          model.Enum = new List<JToken>();

        model.Enum.AddRangeDistinct(schema.Enum, new JTokenEqualityComparer());
      }
      model.Disallow = model.Disallow | (schema.Disallow ?? JsonSchemaType.None);

      if (schema.Pattern != null)
      {
        if (model.Patterns == null)
          model.Patterns = new List<string>();

        model.Patterns.AddDistinct(schema.Pattern);
      }
    }
  }
}
#endif