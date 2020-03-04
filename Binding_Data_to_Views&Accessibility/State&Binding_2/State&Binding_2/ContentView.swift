//
//  ContentView.swift
//  State&Binding_2
//
//  Created by dopamine100 on 2020/03/04.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State private var isPresented = false
  @State private var books = Box(Book.demoBooks)
  @State private var user: User = User.exampleUser
  
  var body: some View {
    
    NavigationView {
      VStack {
        RecommendedRow(book: $books.value[books.value.indices.randomElement()!])
        ScrollView(.horizontal, showsIndicators: false) {
          BooksView(books: $books.value, user: user)
        }
      }
      .navigationBarTitle("Books")
      .navigationBarItems(trailing:
        Button(action: {
          self.isPresented.toggle()
        }) {
          Text("Settings")
      })
      .sheet(isPresented: $isPresented) {
        SettingsView(user: self.user)
      }
    }
    
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
