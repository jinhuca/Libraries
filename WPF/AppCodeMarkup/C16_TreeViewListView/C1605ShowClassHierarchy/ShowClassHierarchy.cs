using System;
using System.Windows;

namespace C1605ShowClassHierarchy
{
	class ShowClassHierarchy : Window
	{
		[STAThread]
		public static void Main()
		{
			Application app = new Application();
			app.Run(new ShowClassHierarchy());
		}
		public ShowClassHierarchy()
		{
			Title = "Show Class Hierarchy";

			// Create ClassHierarchyTreeView.
			ClassHierarchyTreeView treevue =
					new ClassHierarchyTreeView(
									typeof(System.Windows.Threading.DispatcherObject));

			Content = treevue;
		}
	}
}
