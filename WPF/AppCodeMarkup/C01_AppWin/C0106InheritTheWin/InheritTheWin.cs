using System;
using System.Windows;

namespace C0106InheritTheWin
{
	public class InheritTheWin : Window
	{
		[STAThread]
		public static void Main()
		{
			Application app = new Application();
			app.Run(new InheritTheWin());
		}

		public InheritTheWin()
		{
			Title = "Inherit the win";
		}
	}
}
