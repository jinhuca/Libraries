using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace JinHu.WPF.Themes
{
  /// <summary>
  /// Class for defining attached property - Theme for FrameworkElement
  /// </summary>
  public class ThemeManager : FrameworkElement
  {
    /// <summary>
    /// The attached property to specify the Theme for FrameworkElement
    /// </summary>
    public static readonly DependencyProperty ThemeProperty = DependencyProperty.RegisterAttached(
      "Theme",
      typeof(Themes),
      typeof(ThemeManager),
      new PropertyMetadata(Themes.NullTheme, OnThemeChanged));

    /// <summary>
    /// Set attached property Theme
    /// </summary>
    /// <param name="d">Host element</param>
    /// <param name="theme">Attached property</param>
    public static void SetTheme(FrameworkElement d, Themes theme)
    {
      d.SetValue(ThemeProperty, theme);
    }

    /// <summary>
    /// Get attached property Theme
    /// </summary>
    /// <param name="d">Host element</param>
    /// <returns>Attached property Theme</returns>
    public static Themes GetTheme(FrameworkElement d)
    {
      return (Themes)d.GetValue(ThemeProperty);
    }

    /// <summary>
    /// Callback for the attached property changed event
    /// </summary>
    /// <param name="d">Host element</param>
    /// <param name="e">EventArgs</param>
    private static void OnThemeChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
    {
      var newSkin_ = (Themes?)e.NewValue;
      var oldSkin_ = (Themes?)e.OldValue;
      var ctrl_ = (ContentControl)d;

      if (newSkin_ == Themes.NullTheme || newSkin_ == oldSkin_) return;

      var myChoiceOfTheme_ = (Themes)newSkin_;
      var rd_ = GetSkinResourceDictionary(myChoiceOfTheme_);
      if (rd_ == null) return;
      
      try
      {
        ctrl_?.Resources.MergedDictionaries?.Clear();
      }
      catch(Exception ex)
      {
        Console.WriteLine(ex.Message + " @ThemeChanged!");
        Console.WriteLine(ex.Source.ToString());
      }

      ctrl_?.Resources.MergedDictionaries.Add(rd_);
    }

    /// <summary>
    /// Load the registered attached themes from this assembly
    /// </summary>
    /// <param name="theme"></param>
    /// <returns></returns>
    private static ResourceDictionary GetSkinResourceDictionary(Themes theme)
    {
      var packUri_ = AssemblyNamespace.ThemePath + $@"/{theme}/Theme.xaml";
      return Application.LoadComponent(new Uri(packUri_, UriKind.Relative)) as ResourceDictionary;
    }
  }
}
