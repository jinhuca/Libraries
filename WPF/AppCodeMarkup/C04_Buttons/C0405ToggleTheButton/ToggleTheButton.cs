using System;
using System.Windows;
using System.Windows.Controls.Primitives;

namespace C0405ToggleTheButton
{
	public class ToggleTheButton : Window
	{
		[STAThread]
		public static void Main()
		{
			Application app = new Application();
			app.Run(new ToggleTheButton());
		}
		public ToggleTheButton()
		{
			Title = "Toggle the Button";

			ToggleButton btn = new ToggleButton();
			btn.Content = "Can _Resize";
			btn.HorizontalAlignment = HorizontalAlignment.Center;
			btn.VerticalAlignment = VerticalAlignment.Center;
			btn.IsChecked = (ResizeMode == ResizeMode.CanResize);
			btn.Checked += ButtonOnChecked;
			btn.Unchecked += ButtonOnChecked;
			Content = btn;
		}
		void ButtonOnChecked(object sender, RoutedEventArgs args)
		{
			ToggleButton btn = sender as ToggleButton;
			ResizeMode = (bool)btn.IsChecked ? ResizeMode.CanResize : ResizeMode.NoResize;
		}
	}
}
