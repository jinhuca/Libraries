using System.Windows;

namespace C0105InheritAppAndWindow
{
	public class MyApplication : Application
	{
		protected override void OnStartup(StartupEventArgs e)
		{
			base.OnStartup(e);
			MyWindow win = new MyWindow();
			win.Show();
		}
	}
}
