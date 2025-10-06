using System;
using System.Windows;

namespace C0101SayHello
{
	public class SayHello
	{
		[STAThread]
		public static void Main()
		{
			Window win = new Window();
			win.Title = "Say Hello";

			Application app = new Application();
			app.Run(win);
		}
	}
}
