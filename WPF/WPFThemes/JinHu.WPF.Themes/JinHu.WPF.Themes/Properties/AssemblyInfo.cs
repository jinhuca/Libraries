using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Windows;
using JinHu.WPF.Themes;
using System.Windows.Markup;

// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
[assembly: AssemblyTitle("JinHu.WPF.Themes")]
[assembly: AssemblyDescription("")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany("")]
[assembly: AssemblyProduct("JinHu.WPF.Themes")]
[assembly: AssemblyCopyright("Copyright ©  2012")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]

// Setting ComVisible to false makes the types in this assembly not visible 
// to COM components.  If you need to access a type in this assembly from 
// COM, set the ComVisible attribute to true on that type.
[assembly: ComVisible(false)]

// The following GUID is for the ID of the typelib if this project is exposed to COM
[assembly: Guid("ad1b5e2f-aae8-42dd-9e07-033201a94cbe")]

// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Build and Revision Numbers 
// by using the '*' as shown below:
// [assembly: AssemblyVersion("1.0.*")]
[assembly: AssemblyVersion("1.0.0.0")]
[assembly: AssemblyFileVersion("1.0.0.0")]
[assembly: XmlnsDefinition(AssemblyNamespace.DefaultXmlNamespace, "JinHu.WPF.Themes")]
namespace JinHu.WPF.Themes
{
  public static class AssemblyNamespace
  {
    public const string DefaultXmlNamespace = "http://jinhu.visualization.net/WPF_Themes/1.1";
    public const string DefaultAssemblyName = "JinHu.WPF.Themes.dll";
    public const string ThemePath = "/JinHu.WPF.Themes;component/ThemeCollection";
  }
}