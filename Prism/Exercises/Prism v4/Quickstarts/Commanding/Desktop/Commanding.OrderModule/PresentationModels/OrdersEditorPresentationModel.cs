using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Windows.Data;
using Microsoft.Practices.Prism.Events;

using Commanding.Modules.Order.Services;

namespace Commanding.Modules.Order.PresentationModels
{
	/// <summary>
	/// Presentation model to support the OrdersEditorView.
	/// </summary>
	public class OrdersEditorPresentationModel : INotifyPropertyChanged
	{
		private readonly IOrdersRepository ordersRepository;
		private readonly OrdersCommandProxy commandProxy;

		private ObservableCollection<OrderPresentationModel> _orders { get; set; }

		public OrdersEditorPresentationModel(IOrdersRepository ordersRepository, OrdersCommandProxy commandProxy)
		{
			this.ordersRepository = ordersRepository;
			this.commandProxy = commandProxy;

			// Create dummy order data.
			PopulateOrders();

			// Initialize a CollectionView for the underlying Orders collection.
#if SILVERLIGHT
            this.Orders = new PagedCollectionView( _orders );
#else
			Orders = new ListCollectionView(_orders);
#endif
			// Track the current selection.
			Orders.CurrentChanged += SelectedOrderChanged;
			Orders.MoveCurrentTo(null);
		}

		public ICollectionView Orders { get; private set; }

		private void SelectedOrderChanged(object sender, EventArgs e)
		{
			SelectedOrder = Orders.CurrentItem as OrderPresentationModel;
			NotifyPropertyChanged("SelectedOrder");
		}

		public OrderPresentationModel SelectedOrder { get; private set; }

		private void PopulateOrders()
		{
			_orders = new ObservableCollection<OrderPresentationModel>();

			foreach (Services.Order order in ordersRepository.GetOrdersToEdit())
			{
				// Wrap the Order object in a presentation model object.
				var orderPresentationModel = new OrderPresentationModel(order);
				_orders.Add(orderPresentationModel);

				// Subscribe to the Save event on the individual orders.
				orderPresentationModel.Saved += OrderSaved;

				//TODO: 04 - Each Order Save command is registered with the application's SaveAll command.
				commandProxy.SaveAllOrdersCommand.RegisterCommand(orderPresentationModel.SaveOrderCommand);
			}
		}

		private void OrderSaved(object sender, DataEventArgs<OrderPresentationModel> e)
		{
			if (e != null && e.Value != null)
			{
				OrderPresentationModel order = e.Value;
				if (Orders.Contains(order))
				{
					order.Saved -= OrderSaved;
					//TODO: 05 - As each order is saved, it is unregistered from the application's SaveAll command.
					commandProxy.SaveAllOrdersCommand.UnregisterCommand(order.SaveOrderCommand);
					// Remove saved orders from the collection.
					_orders.Remove(order);
				}
			}
		}

		#region INotifyPropertyChanged Members

		public event PropertyChangedEventHandler PropertyChanged;

		private void NotifyPropertyChanged(string propertyName)
		{
			if (PropertyChanged != null)
			{
				PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}

		#endregion
	}
}
