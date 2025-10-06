using System.Windows;
using System.Windows.Input;

namespace C0105InheritAppAndWindow
{
	public class MyWindow : Window
	{
		public MyWindow()
		{
			Title = "Inherit App & Window";
		}

		protected override void OnMouseDown(MouseButtonEventArgs e)
		{
			base.OnMouseDown(e);
			string strMessage = string.Format("Window clicked with {0} button at point ({1})", e.ChangedButton, e.GetPosition(this));
			MessageBox.Show(strMessage, Title);
		}
	}
}
