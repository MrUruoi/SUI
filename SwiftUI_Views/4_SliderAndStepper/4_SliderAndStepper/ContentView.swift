//
//  ContentView.swift
//  4_SliderAndStepper
//
//  Created by dopamine100 on 2020/02/26.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
  @State private var someInt = 0
  @State private var someDouble = 50.0
  
  var body: some View {
    
//    // 1
//    Stepper(onIncrement: {
//      self.someInt += 1
//    }, onDecrement: {
//      self.someInt -= 1
//    }) {
//      Text("someInt")
//    }
    
    
    VStack {
      // 2
      Stepper("someInt: ", value: $someInt)
      Text("someInt: \(someInt)")
      
      // 3
      Slider(value: $someDouble, in: 0...100)
      Text("someDouble: \(someDouble)")
    }
    
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
