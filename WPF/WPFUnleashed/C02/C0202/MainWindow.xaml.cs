using System.Windows;

namespace C0202
{
  /// <summary>
  /// Interaction logic for MainWindow.xaml
  /// </summary>
  public partial class MainWindow : Window
  {
    public MainWindow()
    {
      InitializeComponent();

      System.Windows.Controls.Button b = new System.Windows.Controls.Button();
      b.Background = null;
      b.Height = System.Windows.SystemParameters.IconHeight;
      System.Windows.Data.Binding binding = new System.Windows.Data.Binding();
      binding.Path = new System.Windows.PropertyPath("Height");
      binding.RelativeSource = System.Windows.Data.RelativeSource.Self;
      b.SetBinding(System.Windows.Controls.Button.ContentProperty, binding);

      Content = b;
    }
  }
}