using Microsoft.Practices.Prism.Modularity;
using Microsoft.Practices.Unity;
using Microsoft.Practices.Prism.UnityExtensions;
using System.Windows;
using ModuleA;
using HelloPrism4;

namespace P01HelloPrism4
{
	public class Bootstrapper : UnityBootstrapper
	{
		protected override DependencyObject CreateShell()
		{
			return Container.Resolve<Shell>();
		}

		protected override void InitializeShell()
		{
			//base.InitializeShell();
			Application.Current.MainWindow = (Window)Shell;
			Application.Current.MainWindow.Show();
		}

		protected override void ConfigureModuleCatalog()
		{
			base.ConfigureModuleCatalog();
			ModuleCatalog moduleCatalog = (ModuleCatalog)ModuleCatalog;
			moduleCatalog.AddModule(typeof(HelloPrismModule));
		}
	}
}
