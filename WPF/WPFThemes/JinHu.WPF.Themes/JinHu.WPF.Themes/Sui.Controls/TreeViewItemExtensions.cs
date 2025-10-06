using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Controls;
using System.Windows;
using System.Windows.Data;
using System.Globalization;

namespace JinHu.WPF.Themes
{
  public static class TreeViewItemExtensions
  {
    public static int GetDepth(this TreeViewItem item)
    {
      FrameworkElement elem = item;
      while (elem.Parent != null)
      {
        var tvi = elem.Parent as TreeViewItem;
        if (tvi != null)
          return tvi.GetDepth() + 1;
        elem = elem.Parent as FrameworkElement;
      }
      return 0;
    }
  }

  public class LeftMarginMultiplierConverter : IValueConverter
  {
    public double Length { get; set; }

    public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
    {
      var item = value as TreeViewItem;
      if (item == null)
        return new Thickness(0);

      return new Thickness(-Length * item.GetDepth() - 200, 0, 0, 0);
    }

    public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
    {
      throw new System.NotImplementedException();
    }
  }

  public static class TreeViewItemBehaviour
  {
    #region IsBroughtIntoViewWhenSelected

    public static bool GetIsBroughtIntoViewWhenSelected(TreeViewItem treeViewItem)
    {
      return (bool)treeViewItem.GetValue(IsBroughtIntoViewWhenSelectedProperty);
    }

    public static void SetIsBroughtIntoViewWhenSelected(TreeViewItem treeViewItem, bool value)
    {
      treeViewItem.SetValue(IsBroughtIntoViewWhenSelectedProperty, value);
    }

    public static readonly DependencyProperty IsBroughtIntoViewWhenSelectedProperty =
        DependencyProperty.RegisterAttached(
        "IsBroughtIntoViewWhenSelected",
        typeof(bool),
        typeof(TreeViewItemBehaviour),
        new UIPropertyMetadata(false, OnIsBroughtIntoViewWhenSelectedChanged));

    static void OnIsBroughtIntoViewWhenSelectedChanged(DependencyObject depObj, DependencyPropertyChangedEventArgs e)
    {
      TreeViewItem item = depObj as TreeViewItem;
      if (item == null)
        return;

      if (e.NewValue is bool == false)
        return;

      if ((bool)e.NewValue)
      {
        item.Loaded += item_Loaded;
      }
      else
      {
        item.Loaded -= item_Loaded;
      }
    }

    static void item_Loaded(object sender, RoutedEventArgs e)
    {
      TreeViewItem item = e.OriginalSource as TreeViewItem;
      if (item != null)
        item.BringIntoView();
    }

    #endregion // IsBroughtIntoViewWhenSelected
  }

  class TreeViewLineConverter : IValueConverter
  {
    public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
    {
      TreeViewItem item = (TreeViewItem)value;
      ItemsControl ic = ItemsControl.ItemsControlFromItemContainer(item);
      return ic.ItemContainerGenerator.IndexFromContainer(item) == ic.Items.Count - 1;
    }

    public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
    {
      throw new Exception("The method or operation is not implemented.");
    }
  }
}
