// To do
// @State
// func alert(isPresented: Binding<Bool>, content: () -> Alert) -> some View
// struct Alert
// Binding($)
// 

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible = false
    
    var body: some View {
        Button(action: {
            self.alertIsVisible = true
        }) {
            Text("This is Button")
        }
        .alert(isPresented: $alertIsVisible) {
            Alert(title:  Text("title..."),
                  message:  Text("message..."),
                  dismissButton: .default( Text("dismissButton...")))
        }
    } // VStack
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
