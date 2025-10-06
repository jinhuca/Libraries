using System.Windows;

namespace C0802SetSpaceProperty
{
	public class SpaceWindow : Window
  {
    // DependencyProperty and property.
    public static readonly DependencyProperty SpaceProperty;

    public int Space
    {
      set
      {
        SetValue(SpaceProperty, value);
      }
      get
      {
        return (int)GetValue(SpaceProperty);
      }
    }

    // Static constructor.
    static SpaceWindow()
    {
      // Define metadata.
      FrameworkPropertyMetadata metadata = new FrameworkPropertyMetadata();
      metadata.Inherits = true;

      // Add owner to SpaceProperty and override metadata.
      SpaceProperty =
          SpaceButton.SpaceProperty.AddOwner(typeof(SpaceWindow));
      SpaceProperty.OverrideMetadata(typeof(SpaceWindow), metadata);
    }
  }
}
