using System;
using System.Windows;
using System.Windows.Controls;

namespace C2001XamlCruncher
{
	class FindDialog : FindReplaceDialog
	{
		public FindDialog(Window owner) : base(owner)
		{
			Title = "Find";

			// Hide some controls.
			lblReplace.Visibility = Visibility.Collapsed;
			txtboxReplace.Visibility = Visibility.Collapsed;
			btnReplace.Visibility = Visibility.Collapsed;
			btnAll.Visibility = Visibility.Collapsed;
		}
	}
}
