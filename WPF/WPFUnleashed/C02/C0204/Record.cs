using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace C0204
{
  internal class Record
  {
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public Uri Website { get; set; }
    public bool IsBillionaire { get; set; }
    public Gender Gender { get; set; }
  }

  internal enum Gender
  {
    Female, 
    Male
  }
}
