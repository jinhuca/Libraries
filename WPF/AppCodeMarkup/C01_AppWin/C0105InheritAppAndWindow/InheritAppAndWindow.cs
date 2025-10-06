using System;

namespace C0105InheritAppAndWindow
{
	public class InheritAppAndWindow
	{
		[STAThread]
		public static void Main()
		{
			MyApplication app = new MyApplication();
			app.Run();
		}
	}
}
