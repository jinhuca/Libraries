using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using JinHu.WPF.Themes;

namespace WPFTheme_Demo01
{
  /// <summary>
  /// Interaction logic for MainWindow.xaml
  /// </summary>
  public partial class MainWindow : Window
  {
    public MainWindow()
    {
      InitializeComponent();
      LoadDatabase();
    }

    private void LoadDatabase()
    {
      //lstBox.ItemsSource = App.StoreDb.GetProducts();
      dataGrid.ItemsSource = App.StoreDb.GetProducts();
      lstView.ItemsSource = App.StoreDb.GetProducts();
    }

    private void myTreeViewEvent_Selected(object sender, RoutedEventArgs e)
    {
      TreeViewItem tvi = (TreeViewItem)e.OriginalSource;
      if (tvi != null)
        tvi.IsExpanded = !tvi.IsExpanded;
    }

    private void themeMenu_SubmenuClosed(object sender, RoutedEventArgs e)
    {
      MenuItem m = e.OriginalSource as MenuItem;
      string str = m.Header.ToString();

      Themes s = (Themes)Enum.Parse(typeof(Themes), str, true);
      ThemeManager.SetTheme(this.win, s);
    }

    private void btn1_Click(object sender, RoutedEventArgs e)
    {
      chkbox.Content = "John";
      btn1.Content = "John";
      rdbtn.Content = "John";
      rpt1.Content = "John";
    }

    private void Button_Click(object sender, RoutedEventArgs e)
    {
      chkbox.Content = "David";
      btn1.Content = "David";
      rdbtn.Content = "David";
      rpt1.Content = "David";
    }
  }
}
