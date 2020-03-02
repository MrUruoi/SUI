/*
 In order to resize an image in any way,
 you'll need the resizable modifier.
 func resizable(capInsets: EdgeInsets = EdgeInsets(), resizingMode: Image.ResizingMode = .stretch) -> Image
 The default stretch method simply scales your image's size to fill the view that it's in.
 But it does not respect the image's aspect ratio.
 Fit will scale the image up to the bounds of its parent, but will not extend beyond that.
 Fill will extend beyond the bounds of its parent, but will completely fill the view as a result.
 
 */

/* Resizing Modes
 Aspect Fill
 Aspect Fit
 Custom Aspect Ratio
 Scaling shorthands
 ...
 */

/* Style Modifiers
 Saturation
 Contrast
 HueRotation
 Shadow
 Opacity
 ...
 */


import SwiftUI

struct ContentView: View {
  var body: some View {
    Image("ppg")
      //.resizable()
      // Fit, Fil
      //.aspectRatio(contentMode: .fit)
      //.aspectRatio(contentMode: .fill)
      
      // Custom
      //.resizable()
      //.aspectRatio(16/9, contentMode: .fit)
    
      // Scaling shorthands
      //.resizable()
      //.scaledToFit()
      //.scaledToFill()
    
      // Clipping
      //.resizable()
      //.scaledToFit()
      //.clipShape(Circle())
        //.padding([.leading, .trailing])
    
      //
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      ContentView()
      ContentView().previewDevice("iPhone SE")
    }
  }
}
