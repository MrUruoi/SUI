//
//  BookRow.swift
//  State&Binding_1
//
//  Created by dopamine100 on 2020/03/03.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct BookRow: View {
  @Binding var book: Book
  var proxy: GeometryProxy
  
  var body: some View {
    
    NavigationLink(destination: BookDetailView(book: $book)) {
      VStack {
        Text(book.title)
        Image(systemName: book.imageName)
      }
    }
    
    
    
  } // body
  
}

//struct BookRow_Previews: PreviewProvider {
//  static var previews: some View {
//    BookRow()
//  }
//}
