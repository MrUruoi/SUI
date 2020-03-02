import SwiftUI
import PlaygroundSupport

struct ContentView: View {
  var body: some View {
    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
      .fontWeight(.bold)
      .underline()
      .italic()
      .font(Font.system(.title, design: .rounded))
      .lineLimit(3)
      .minimumScaleFactor(0.5)
      .multilineTextAlignment(.center)
      .truncationMode(.middle)
      .foregroundColor(.primary)
      .padding()
      .background(Color.gray)
      .border(Color.black, width: 3)
  }
}

PlaygroundPage.current.setLiveView(ContentView())

