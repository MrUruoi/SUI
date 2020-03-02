//
//  ContentView.swift
//  EnvironmentAttribute
//
//  Created by dopamine100 on 2020/02/20.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

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
