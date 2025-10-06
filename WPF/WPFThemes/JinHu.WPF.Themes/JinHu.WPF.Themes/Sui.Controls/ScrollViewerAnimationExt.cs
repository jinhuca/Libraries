using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;

namespace JinHu.WPF.Themes.Extensions
{
  public class ScrollViewerAnimationExt : FrameworkElement
  {
    /// <summary>
    /// Attached property for ScrollViewer animation.
    /// </summary>
    public static readonly DependencyProperty AnimationValueProperty = DependencyProperty.RegisterAttached(
      "AnimationValue",
      typeof(Nullable<Double>),
      typeof(ScrollViewer),
      new UIPropertyMetadata(0.0));

    /// <summary>
    /// Set attached property AnimationValueProperty
    /// </summary>
    /// <param name="expander"></param>
    /// <param name="animationValue"></param>
    public static void SetAnimationValue(ScrollViewer scrollviewer, Nullable<Double> animationValue)
    {
      scrollviewer.SetValue(AnimationValueProperty, animationValue);
    }

    /// <summary>
    /// Get attached property AnimationValueProperty
    /// </summary>
    /// <param name="scrollviewer"></param>
    /// <returns></returns>
    public static Nullable<Double> GetTheme(ScrollViewer scrollviewer)
    {
      return (Nullable<Double>)scrollviewer.GetValue(AnimationValueProperty);
    }

    /// <summary>
    /// Callback for the attached property changed event
    /// </summary>
    /// <param name="d">Host element</param>
    /// <param name="e">EventArgs</param>
    private static void OnAnimationValueChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
    {
      Nullable<double> AnimationValueNew = e.NewValue as Nullable<double>;
      Nullable<double> AnimationValueOld = e.OldValue as Nullable<double>;
    }
  }
}
