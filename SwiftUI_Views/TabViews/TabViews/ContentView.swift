//
//  ContentView.swift
//  TabViews
//
//  Created by dopamine100 on 2020/03/02.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  
  var body: some View {
  
    TabView {
      ViewA().tabItem {
        Image(systemName: "square.stack.fill")
        Text(verbatim: "A")
      }.tag(0)
      ViewB().tabItem {
        Image(systemName: "wrench.fill")
        Text(verbatim: "B")
      }.tag(1)
    }
    
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
