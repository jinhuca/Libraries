using System;
using System.Globalization;
using System.Windows.Data;

namespace C1608ExploreDependencyProperties
{
	class TypeToString : IValueConverter
	{
		public object Convert(object obj, Type type, object param,
													CultureInfo culture)
		{
			return (obj as Type).Name;
		}
		public object ConvertBack(object obj, Type type, object param,
															CultureInfo culture)
		{
			return null;
		}
	}
}
