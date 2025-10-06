﻿using System.Windows;
using System.Windows.Media;

namespace C0307RenderTheGraphic
{
	class SimpleEllipse : FrameworkElement
  {
    protected override void OnRender(DrawingContext dc)
    {
      dc.DrawEllipse(
        Brushes.Blue, 
        new Pen(Brushes.Red, 24),
        new Point(RenderSize.Width / 2, RenderSize.Height / 2),
        RenderSize.Width / 2, RenderSize.Height / 2);
    }
  }
}
