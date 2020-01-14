//
//  ContentView.swift
//  6. Bindings
//
//  Created by dopamine100 on 2020/01/13.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var alertIsVisible = false
    @State var sliderValue: Double = 50.0
    
    var body: some View {
        VStack {
            HStack {
                Text("1")
                Slider(value: $sliderValue, in: 1...100)
                Text("100")
            }
            Button(action: { self.alertIsVisible = true }) {
                Text("Button...")
            }
            .alert(isPresented: $alertIsVisible) {
                Alert(title:  Text("title..."),
                      message:  Text("\(self.sliderValue)"),
                      dismissButton: .default( Text("dismissButton...")))
            }

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
