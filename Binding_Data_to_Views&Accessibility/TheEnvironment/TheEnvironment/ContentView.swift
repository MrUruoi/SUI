//
//  ContentView.swift
//  TheEnvironment
//
//  Created by dopamine100 on 2020/03/06.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
  
  var body: some View {
    NavigationView {
      VStack {
        
        if horizontalSizeClass == .regular {
          Image(systemName: "TV")
          .resizable()
            .frame(width: 200, height: 200, alignment: .center)
        }
        DeviceView()
      }
    .navigationBarTitle("Device")
    }
  } // body
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .environment(\.colorScheme, .dark)
  }
}
