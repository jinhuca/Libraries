using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace C1705PrintBetterBanner
{
	public class ChooseFont : Window
	{
			public ChooseFont()
		{
			Title = "Choose Font";

			Button btn = new Button();
			btn.Content = Title;
			btn.HorizontalAlignment = HorizontalAlignment.Center;
			btn.VerticalAlignment = VerticalAlignment.Center;
			btn.Click += ButtonOnClick;
			Content = btn;
		}
		void ButtonOnClick(object sender, RoutedEventArgs args)
		{
			FontDialog dlg = new FontDialog();
			dlg.Owner = this;

			// Set FontDialog properties from Window.
			dlg.Typeface = new Typeface(FontFamily, FontStyle,
																	FontWeight, FontStretch);
			dlg.FaceSize = FontSize;

			if (dlg.ShowDialog().GetValueOrDefault())
			{
				// Set Window properties from FontDialog.
				FontFamily = dlg.Typeface.FontFamily;
				FontStyle = dlg.Typeface.Style;
				FontWeight = dlg.Typeface.Weight;
				FontStretch = dlg.Typeface.Stretch;
				FontSize = dlg.FaceSize;
			}
		}
	}
}
