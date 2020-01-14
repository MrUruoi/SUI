// To do
// Project setting - Deployment Info - Device Orientation
// previewLayout(.fixed(width: 896, height: 414))
// Editor - Layout - Canvas on Bottom

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
