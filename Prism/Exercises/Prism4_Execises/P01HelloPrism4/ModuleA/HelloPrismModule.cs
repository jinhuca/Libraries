using Microsoft.Practices.Prism.Modularity;
using Microsoft.Practices.Prism.Regions;

namespace ModuleA
{
	public class HelloPrismModule : IModule
	{
		private readonly IRegionViewRegistry regionViewRegistry;

		public HelloPrismModule(IRegionViewRegistry registry)
		{
			regionViewRegistry = registry;
		}

		public void Initialize()
		{
			regionViewRegistry.RegisterViewWithRegion("MainRegion", typeof(Views.HelloPrismView));
		}
	}
}
