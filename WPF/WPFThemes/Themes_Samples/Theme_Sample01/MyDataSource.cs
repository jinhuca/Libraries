using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WPFTheme_Demo01
{
  public class MyDataSource
  {
    private string _name = "David";

    public string Name
    {
      get { return _name; }
      set { _name = value; }
    }

    public MyDataSource()
    {
    }
  }
}
