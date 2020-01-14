// To do
// Text
// Button
// Vstack

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
            Button(action: {
                print("pressed")
            }) {
                Text("Hit me!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
