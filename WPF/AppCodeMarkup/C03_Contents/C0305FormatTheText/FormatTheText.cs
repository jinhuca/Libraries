using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;

namespace C0305FormatTheText
{
	public class FormatTheText : Window
  {
    [STAThread]
    public static void Main()
    {
      Application app = new Application();
      app.Run(new FormatTheText());
    }
    public FormatTheText()
    {
      Title = "Format the Text";

      TextBlock txt = new TextBlock();
      txt.FontSize = 32;              // 24 points
      txt.Inlines.Add("This is some ");
      txt.Inlines.Add(new Italic(new Run("italic")));
      txt.Inlines.Add(" text, and this is some ");
      txt.Inlines.Add(new Bold(new Run("bold")));
      txt.Inlines.Add(" text, and let's cap it off with some ");
      txt.Inlines.Add(new Bold(new Italic(new Run("bold italic"))));
      txt.Inlines.Add(" text.");
      txt.TextWrapping = TextWrapping.Wrap;

      Content = txt;
    }
  }
}
