//
//  BooksView.swift
//  State&Binding_1
//
//  Created by dopamine100 on 2020/03/03.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct BooksView: View {
  @Binding var books: [Book]
  
  var body: some View {
      
    HStack {
      
      ForEach(Range(0...books.count-1)) { iteration in
        GeometryReader { proxy in
          BookRow(book: self.$books[iteration], proxy: proxy)
        }
      .frame(width: 200, height: 300)
      }
      
    }
    
  }
  
}

struct BooksView_Previews: PreviewProvider {
  static var previews: some View {
    BooksView(books: .constant(Book.demoBooks))
  }
}
