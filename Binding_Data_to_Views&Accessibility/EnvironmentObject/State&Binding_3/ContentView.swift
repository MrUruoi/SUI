//
//  ContentView.swift
//  State&Binding_3
//
//  Created by dopamine100 on 2020/03/05.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @State private var isPresented = false
  @State private var books = Book.demoBooks
  @EnvironmentObject private var user: User
  
  var body: some View {
    
    NavigationView {
      ScrollView(.horizontal, showsIndicators: false) {
        BooksView(books: $books, user: user)
      }
      .navigationBarTitle("Books")
      .navigationBarItems(trailing: Button(action: {
        self.isPresented.toggle()
      }) {
        Text("Settings")
      })
      .sheet(isPresented: $isPresented) {
        SettingView(user: self.user)
      }
    }
    
  } // body
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
