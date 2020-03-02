//
//  ContentView.swift
//  5_DatePicker&Toggle
//
//  Created by dopamine100 on 2020/02/26.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @State private var isActivated = false
  @State private var pickedDate = Date()
  
  var isActivatedMessage: String {
    "CatNip is " + (isActivated ? "Ativated": "Deactivated")
  }
  
  var dateFormatter: DateFormatter {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .short
    return dateFormatter
  }
  
  var body: some View {
    VStack {
      Spacer()
      
      Toggle("...", isOn: $isActivated)
      Text(isActivatedMessage)
        .foregroundColor(isActivated ? .green : .red)
        .fontWeight(isActivated ? .heavy : .regular)
      
      Spacer()
      
//      DatePicker(selection: $pickedDate, displayedComponents: [.date]) {
//        Text("Select Date")
//      }
      DatePicker(
        selection: $pickedDate,
        in: ClosedRange(uncheckedBounds: (
          lower: Date(),
          upper: Date(timeIntervalSinceNow: 90000))),
        displayedComponents: .date) {
        Text("Select Date")
      }
      Text("\(dateFormatter.string(from: pickedDate))")
      
      Spacer()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
