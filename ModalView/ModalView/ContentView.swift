/*
 In SwiftUI, there's a type of modal view,
 which takes up almost the entire screen.
 It'called a sheet and you van add one to a view using the sheet method.
 */

import SwiftUI

struct ContentView: View {
    
    @State var modalIsPresented = false
    
    var body: some View {
        NavigationView {
            Button(action: {
                self.modalIsPresented = true
            }) {
                Text("Hit me!")
            }
        }
        .sheet(isPresented: $modalIsPresented) {
            NewModalView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


