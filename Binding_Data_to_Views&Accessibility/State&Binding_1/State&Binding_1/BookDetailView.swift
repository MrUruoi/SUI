//
//  BookDetailView.swift
//  State&Binding_1
//
//  Created by dopamine100 on 2020/03/04.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct BookDetailView: View {
  @Binding var book: Book
  
  var body: some View {
  
    VStack {
      Text(book.title)
      Image(systemName: book.imageName)
      Button(action: {
        self.book.isLiked.toggle()
        print(self.book.isLiked)
      }) {
        Text("👍 Like")
        .padding()
          .foregroundColor(book.isLiked ? .secondary : .primary)
          .background(book.isLiked ? Color.yellow : Color.gray)
          
      }
    }
  
  }
  
}

struct BookDetailView_Previews: PreviewProvider {
  static var previews: some View {
    BookDetailView(book: .constant(Book.demoBooks.randomElement()!))
  }
}
