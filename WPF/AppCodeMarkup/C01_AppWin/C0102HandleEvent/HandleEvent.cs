using System;
using System.Windows;
using System.Windows.Input;

namespace C0102HandleEvent
{
	public class HandleEvent
	{
		[STAThread]
		public static void Main()
		{
			Application app = new Application();

			Window win = new Window();
			win.Title = "Handle An Event";
			win.MouseDown += windowOnMouseDown;

			app.Run(win);
		}

		private static void windowOnMouseDown(object sender, MouseButtonEventArgs args)
		{
			Window win = sender as Window;
			string strMessage = string.Format("Window clicked with {0} button at point ({1})", args.ChangedButton, args.GetPosition(win));
			MessageBox.Show(strMessage, win.Title);
		}
	}
}