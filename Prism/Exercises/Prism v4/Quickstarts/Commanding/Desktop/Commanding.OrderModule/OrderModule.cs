using Microsoft.Practices.Prism.Modularity;
using Microsoft.Practices.Prism.Regions;
using Microsoft.Practices.Unity;
using Commanding.Modules.Order.Views;
using Commanding.Modules.Order.Services;

namespace Commanding.Modules.Order
{
	public class OrderModule : IModule
	{
		private readonly IRegionManager regionManager;
		private readonly IUnityContainer container;

		public OrderModule(IUnityContainer container, IRegionManager regionManager)
		{
			this.container = container;
			this.regionManager = regionManager;
		}

		public void Initialize()
		{
			container.RegisterType<IOrdersRepository, OrdersRepository>(new ContainerControlledLifetimeManager());

			// Show the Orders Editor view in the shell's main region.
			regionManager.RegisterViewWithRegion("MainRegion", () => container.Resolve<OrdersEditorView>());

			// Show the Orders Toolbar view in the shell's toolbar region.
			regionManager.RegisterViewWithRegion("GlobalCommandsRegion", () => container.Resolve<OrdersToolBar>());
		}
	}
}

