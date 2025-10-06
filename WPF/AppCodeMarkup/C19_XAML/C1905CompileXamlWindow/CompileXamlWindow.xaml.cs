using System;
using System.Reflection;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace C1905CompileXamlWindow
{
	public partial class CompileXamlWindow : Window
	{
		[STAThread]
		public static void Main()
		{
			Application app = new Application();
			app.Run(new CompileXamlWindow());
		}

		public CompileXamlWindow()
		{
			InitializeComponent();
			foreach(PropertyInfo prop in typeof(Brushes).GetProperties())
			{
				lstbox.Items.Add(prop.Name);
			}
		}

		private void ButtonOnClick(object sender, RoutedEventArgs e)
		{
			Button btn = sender as Button;
			MessageBox.Show("The button labled '" + btn.Content + "' has been clicked.");
		}

		void ListBoxOnSelection(object sender, SelectionChangedEventArgs args)
		{
			ListBox lstbox = sender as ListBox;
			string strItem = lstbox.SelectedItem as string;
			PropertyInfo prop = typeof(Brushes).GetProperty(strItem);
			elips.Fill = (Brush)prop.GetValue(null, null);
		}
	}
}
