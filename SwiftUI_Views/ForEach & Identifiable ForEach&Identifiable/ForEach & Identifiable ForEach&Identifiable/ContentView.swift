//
//  ContentView.swift
//  ForEach & Identifiable ForEach&Identifiable
//
//  Created by dopamine100 on 2020/02/27.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct someStruct: Identifiable {
  let id = UUID()
  var str: String
}

extension someStruct {
  static let structList: [someStruct] = [
    someStruct(str: "11"),
    someStruct(str: "22"),
    someStruct(str: "33")
  ]
}

struct ContentView: View {
  
  let strings = ["aa", "bb", "cc"]
  
  @State private var selectedPickerIndex = 0
  
  var body: some View {
    
//    // 1
//    VStack {
//      ForEach(Range(0...3)) {
//        Text("Text...\($0)")
//      }
//    }
    
//    // 2
//    VStack {
//      ForEach(strings, id: \.self) { string in
//          Text(string)
//      }
//    }
    
//    // 3
//    VStack {
//      ForEach(someStruct.structList) { list in
//        Text(list.str)
//      }
//    }
    
    // 4
    Picker(selection: $selectedPickerIndex, label: Text("Picker...")) {
      ForEach(0..<someStruct.structList.count) { index in
        Text(someStruct.structList[index].str)
      }
    }
    
    
  }
  
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*
 "Picker" will allow you to iterate over a collection of data but requires that you use a range
The "Picker" allows you to select from a list of custom items in a collection and takes a binding to a selected index.
 This selected value, will be bound as state to your "view" and updated whenever your user taps on an item in the "Picker."
 */
