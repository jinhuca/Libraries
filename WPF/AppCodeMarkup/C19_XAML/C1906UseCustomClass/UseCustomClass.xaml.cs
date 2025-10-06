using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace C1906UseCustomClass
{
	public partial class UseCustomClass : Window
  {
    [STAThread]
    public static void Main()
    {
      Application app = new Application();
      app.Run(new UseCustomClass());
    }
    public UseCustomClass()
    {
      InitializeComponent();
    }
    
    private void ColorGridBoxOnSelectionChanged(object sender, SelectionChangedEventArgs args)
    {
      ColorGridBox clrbox = args.Source as ColorGridBox;
      Background = (Brush)clrbox.SelectedValue;
    }
  }
}
