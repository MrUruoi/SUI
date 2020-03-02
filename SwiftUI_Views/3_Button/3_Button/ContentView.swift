//
//  ContentView.swift
//  3_Button
//
//  Created by dopamine100 on 2020/02/26.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  var hello = "Hello!"
  
  var helloPrinter: () -> () = {
    print("Hello!")
  }
  
  var body: some View {
    VStack {
      VStack {
        Spacer()
        
        // 1
        Button("Button1") {
          print(self.hello)
        }
        Spacer()
        
        // 2
        Button(action: helloPrinter) {
          VStack {
            Image("ppg")
              .renderingMode(.original)
              .resizable()
              .scaledToFit()
              .shadow(radius: 10)
              .padding()
            
            Text("ppg")
              .font(Font.system(.headline, design: .rounded))
              .foregroundColor(.primary)
              .padding([.leading, .trailing], 10)
              .padding([.top, .bottom], 5)
              .background(Color.purple)
              .cornerRadius(10)
              .shadow(radius: 10)
          }
        }
        Spacer()
        
        // 3
        VStack {
          Text("Button3")
            .font(Font.system(.largeTitle))
          Image(systemName: "heart")
            .font(Font.system(.largeTitle))
        }
        
        Spacer()
      }
    }
  } // body
  
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      Group {
        ContentView()
        ContentView().previewDevice("iPhone SE")
      }
    }
}


// Download SF Symbols
