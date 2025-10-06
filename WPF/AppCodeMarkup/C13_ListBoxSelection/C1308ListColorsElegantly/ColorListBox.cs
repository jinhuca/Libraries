﻿using System.Reflection;
using System.Windows.Controls;
using System.Windows.Media;

namespace C1308ListColorsElegantly
{
	class ColorListBox : ListBox
  {
    public ColorListBox()
    {
      PropertyInfo[] props = typeof(Colors).GetProperties();

      foreach (PropertyInfo prop in props)
      {
        ColorListBoxItem item = new ColorListBoxItem();
        item.Text = prop.Name;
        item.Color = (Color)prop.GetValue(null, null);
        Items.Add(item);
      }
      SelectedValuePath = "Color";
    }
    public Color SelectedColor
    {
      set { SelectedValue = value; }
      get { return (Color)SelectedValue; }
    }
  }
}
