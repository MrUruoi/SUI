//
//  ContentView.swift
//  Navigation
//
//  Created by dopamine100 on 2020/03/02.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @State private var isPresented = false
  
  var body: some View {
    NavigationView {
      ScrollView(.horizontal, showsIndicators: false) {
        HStack {
          ForEach(Book.demoBooks) { book in
            GeometryReader { proxy in
              
              NavigationLink(destination: BookDetailView(book: book)) {
                BookView(book: book, proxy: proxy)
              }
              
            }
            .frame(width: 200, height: 300)
          }
        }
      }
    .navigationBarTitle("Demo Books")
    .navigationBarItems(trailing: Button(action: {
        self.isPresented.toggle()
      }, label: {
        Text("Help")
      }))
      
      .sheet(isPresented: $isPresented) {
          EmptyView()
      }
    }
    
    
  } // body
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

