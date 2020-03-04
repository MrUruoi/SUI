//
//  ContentView.swift
//  State&Binding_1
//
//  Created by dopamine100 on 2020/03/03.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State private var isPresented = false
  @State private var books = Box(Book.demoBooks)
  
  var body: some View {
    
    NavigationView {
      VStack {
        RecommendedRow(book: $books.value[books.value.indices.randomElement()!])
        
        ScrollView(.horizontal, showsIndicators: false) {
          BooksView(books: $books.value)
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
          SettingsView()
        }
    }
    
  } // body
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
