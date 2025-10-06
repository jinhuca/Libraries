using System;
using System.Windows;
using System.Windows.Controls;

namespace ModuleA
{
	/// <summary>
	/// Interaction logic for AddFundView.xaml
	/// </summary>
	public partial class AddFundView : UserControl, IAddFundView
	{
		private AddFundPresenter _presenter;

		public AddFundView()
		{
			InitializeComponent();
			this.AddButton.Click += new RoutedEventHandler(AddButton_Click);
		}

		public AddFundView(AddFundPresenter presenter) : this()
		{
			_presenter = presenter;
			_presenter.View = this;
		}

		void AddButton_Click(object sender, RoutedEventArgs e)
		{
			AddFund(this, null);
		}

		#region IAddFundView Members

		public event EventHandler AddFund = delegate { };

		public string Customer
		{
			get
			{
				ComboBoxItem selectedItem = this.CustomerCbx.SelectedItem as ComboBoxItem;
				if (selectedItem == null)
					return string.Empty;

				return selectedItem.Content.ToString();


			}
		}

		public string Fund
		{
			get
			{
				ComboBoxItem selectedItem = this.FundCbx.SelectedItem as ComboBoxItem;
				if (selectedItem == null)
					return string.Empty;

				return selectedItem.Content.ToString();
			}
		}

		#endregion
	}
}
