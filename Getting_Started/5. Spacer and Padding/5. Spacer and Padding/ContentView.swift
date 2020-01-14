//
//  ContentView.swift
//  5. Spacer and Padding
//
//  Created by dopamine100 on 2020/01/09.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Text("Put the bullseye as close as you can to:")
                Text("XX")
            }
            
            Spacer()
            
            HStack {
                Text("1")
                Slider(value: .constant(10))
                Text("100")
            }
            
            Spacer()
            
            Button(action: {
                
            }) {
                Text("Button!")
            }
            
            Spacer()
            
            HStack {
                Button(action: {
                    
                }) {
                    Text("Start Over")
                }
                Spacer()
                Text("Score: ")
                Text("XX")
                Spacer()
                Text("Round: ")
                Text("XX")
                Spacer()
                Button(action: {
                    
                }) {
                    Text("Info")
                }
            }.padding(.bottom, 20)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
