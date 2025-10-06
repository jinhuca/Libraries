using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Controls;
using System.Globalization;

namespace WPFTheme_Demo01
{
  public class AgeRangeRule : ValidationRule
  {
    private string _name;

    public AgeRangeRule()
    {
    }

    public string Name
    {
      get { return _name; }
      set { _name = value; }
    }

    public override ValidationResult Validate(object value, CultureInfo cultureInfo)
    {
      string name = (string)value;
      if(name == "John")
        return new ValidationResult(false, "Error");
      else
        return new ValidationResult(true, null);
    }
    //public override ValidationResult Validate(object value, CultureInfo cultureInfo)
    //{
    //  string name = "";

    //  try
    //  {
    //    if(((string)value).Length > 0) name = (String)value;
    //  }
    //  catch(Exception e)
    //  {
    //    return new ValidationResult(false, "Illegal characters or " + e.Message);
    //  }

    //  if(name == "John")
    //  {
    //    return new ValidationResult(false, "Please enter an valid name.");
    //  }
    //  else
    //  {
    //    return new ValidationResult(true, null);
    //  }
    //}
  }
}
