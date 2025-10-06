using Microsoft.Practices.Prism.Events;

namespace EventAggregation.Infrastructure
{
	public class FundAddedEvent : CompositePresentationEvent<FundOrder>
	{
	}
}
