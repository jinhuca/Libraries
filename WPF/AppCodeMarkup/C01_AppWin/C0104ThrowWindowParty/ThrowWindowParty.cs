using System;
using System.Windows;
using System.Windows.Input;

namespace C0104ThrowWindowParty
{
	public class ThrowWindowParty : Application
	{
		[STAThread]
		public static void Main()
		{
			ThrowWindowParty app = new ThrowWindowParty();
			app.Run();
		}

		protected override void OnStartup(StartupEventArgs e)
		{
			base.OnStartup(e);

			Window winMain = new Window();
			winMain.Title = "Main Window";
			winMain.MouseDown += WindowOnMouseDown;
			winMain.Show();

			for(int i = 0; i < 2; i++)
			{
				Window win = new Window();
				win.Title = "Extra Window No. " + (i + 1);
				win.Show();
			}
		}

		private void WindowOnMouseDown(object sender, MouseButtonEventArgs e)
		{
			Window win = new Window();
			win.Title = "Modal Dialog Box";
			win.ShowDialog();
		}
	}
}
