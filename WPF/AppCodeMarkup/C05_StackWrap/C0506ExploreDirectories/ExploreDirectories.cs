﻿using System;
using System.Windows;
using System.Windows.Controls;

namespace C0506ExploreDirectories
{
	public class ExploreDirectories : Window
  {
    [STAThread]
    public static void Main()
    {
      Application app = new Application();
      app.Run(new ExploreDirectories());
    }
    public ExploreDirectories()
    {
      Title = "Explore Directories";

      ScrollViewer scroll = new ScrollViewer();
      Content = scroll;

      WrapPanel wrap = new WrapPanel();
      scroll.Content = wrap;

      wrap.Children.Add(new FileSystemInfoButton());
    }
  }
}
