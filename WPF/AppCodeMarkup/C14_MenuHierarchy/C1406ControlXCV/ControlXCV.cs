﻿using System;
using System.Windows;
using System.Windows.Input;

namespace C1406ControlXCV
{
	public class ControlXCV : CutCopyAndPaste
  {
    KeyGesture gestCut = new KeyGesture(Key.X, ModifierKeys.Control);
    KeyGesture gestCopy = new KeyGesture(Key.C, ModifierKeys.Control);
    KeyGesture gestPaste = new KeyGesture(Key.V, ModifierKeys.Control);
    KeyGesture gestDelete = new KeyGesture(Key.Delete);

    [STAThread]
    public static void Main()
    {
      Application app = new Application();
      app.Run(new ControlXCV());
    }
    public ControlXCV()
    {
      Title = "Control X, C, and V";

      itemCut.InputGestureText = "Ctrl+X";
      itemCopy.InputGestureText = "Ctrl+C";
      itemPaste.InputGestureText = "Ctrl+V";
      itemDelete.InputGestureText = "Delete";
    }
    protected override void OnPreviewKeyDown(KeyEventArgs args)
    {
      base.OnKeyDown(args);
      args.Handled = true;

      if (gestCut.Matches(null, args))
        CutOnClick(this, args);

      else if (gestCopy.Matches(null, args))
        CopyOnClick(this, args);

      else if (gestPaste.Matches(null, args))
        PasteOnClick(this, args);

      else if (gestDelete.Matches(null, args))
        DeleteOnClick(this, args);

      else
        args.Handled = false;
    }
  }
}
