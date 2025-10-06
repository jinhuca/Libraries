using System;
using System.Windows;
using System.Windows.Controls;

namespace C2001XamlCruncher
{
	class ReplaceDialog : FindReplaceDialog
	{
		public ReplaceDialog(Window owner) : base(owner)
		{
			Title = "Replace";

			// Make the GroupBox invisible.
			//            groupDirection.Visibility = Visibility.Hidden;
		}
	}
}
