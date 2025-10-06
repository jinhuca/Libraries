using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Globalization;

using Microsoft.Practices.Prism.Events;
using Microsoft.Practices.Prism.Commands;

using Commanding.Modules.Order.Properties;

namespace Commanding.Modules.Order.PresentationModels
{
	/// <summary>
	/// Presentation model that represents an Order entity.
	/// </summary>
	public partial class OrderPresentationModel : INotifyPropertyChanged, IDataErrorInfo
	{
		private readonly IDictionary<string, string> errors = new Dictionary<string, string>();
		private readonly Services.Order _order;

		public OrderPresentationModel(Services.Order order)
		{
			_order = order;

			//TODO: 01 - Each Order defines a Save command.
			SaveOrderCommand = new DelegateCommand<object>(Save, CanSave);

			// Track all property changes so we can validate.
			PropertyChanged += OnPropertyChanged;

			Validate();
		}

		#region Order Properties - OrderName, DeliveryDate, Quantity, Price, Shipping, Total

		public string OrderName
		{
			get { return _order.Name; }
			set { _order.Name = value; NotifyPropertyChanged("OrderName"); }
		}

		public DateTime DeliveryDate
		{
			get { return _order.DeliveryDate; }
			set
			{
				if (_order.DeliveryDate != value)
				{
					_order.DeliveryDate = value;
					NotifyPropertyChanged("DeliveryDate");
				}
			}
		}

		public int? Quantity
		{
			get { return _order.Quantity; }
			set
			{
				if (_order.Quantity != value)
				{
					_order.Quantity = value;
					NotifyPropertyChanged("Quantity");
				}
			}
		}

		public decimal? Price
		{
			get { return _order.Price; }
			set
			{
				if (_order.Price != value)
				{
					_order.Price = value;
					NotifyPropertyChanged("Price");
				}
			}
		}

		public decimal? Shipping
		{
			get { return _order.Shipping; }
			set
			{
				if (_order.Shipping != value)
				{
					_order.Shipping = value;
					NotifyPropertyChanged("Shipping");
				}
			}
		}

		public decimal Total
		{
			get
			{
				if (Price != null && Quantity != null)
				{
					return (Price.Value * Quantity.Value) + (Shipping ?? 0);
				}
				return 0;
			}
		}

		#endregion

		private void OnPropertyChanged(object sender, PropertyChangedEventArgs e)
		{
			// Total is a calculated property based on price, quantity and shipping cost.
			// If any of these properties change, then notify the view.
			string propertyName = e.PropertyName;
			if (propertyName == "Price" || propertyName == "Quantity" || propertyName == "Shipping")
			{
				NotifyPropertyChanged("Total");
			}

			// Validate and update the enabled status of the SaveOrder
			// command whenever any property changes.
			Validate();
			SaveOrderCommand.RaiseCanExecuteChanged();
		}

		#region SaveOrder Command

		public event EventHandler<DataEventArgs<OrderPresentationModel>> Saved;

		public DelegateCommand<object> SaveOrderCommand { get; private set; }

		private bool CanSave(object arg)
		{
			//TODO: 02 - The Order Save command is enabled only when all order data is valid.
			// Can only save when there are no errors and
			// when the order quantity is greater than zero.
			return errors.Count == 0 && Quantity > 0;
		}

		private void Save(object obj)
		{
			// Save the order here.
			Console.WriteLine(String.Format(CultureInfo.InvariantCulture, "{0} saved.", OrderName));

			// Notify that the order was saved.
			OnSaved(new DataEventArgs<OrderPresentationModel>(this));
		}

		private void OnSaved(DataEventArgs<OrderPresentationModel> e)
		{
			EventHandler<DataEventArgs<OrderPresentationModel>> savedHandler = Saved;
			if (savedHandler != null)
			{
				savedHandler(this, e);
			}
		}

		#endregion

		#region IDataErrorInfo Interface

		public string this[string columnName]
		{
			get
			{
				if (errors.ContainsKey(columnName))
				{
					return errors[columnName];
				}
				return null;
			}
			set
			{
				errors[columnName] = value;
			}
		}

		public string Error
		{
			get
			{
				// Not implemented because we are not consuming it in this quick start. 
				// Instead, we are displaying error messages at the item level. 
				throw new NotImplementedException();
			}
		}

		#endregion

		private void Validate()
		{
			if (Price == null || Price <= 0)
			{
				this["Price"] = Resources.InvalidPriceRange;
			}
			else
			{
				ClearError("Price");
			}

			if (Quantity == null || Quantity <= 0)
			{
				this["Quantity"] = Resources.InvalidQuantityRange;
			}
			else
			{
				ClearError("Quantity");
			}
		}

		private void ClearError(string columnName)
		{
			if (errors.ContainsKey(columnName))
			{
				errors.Remove(columnName);
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
