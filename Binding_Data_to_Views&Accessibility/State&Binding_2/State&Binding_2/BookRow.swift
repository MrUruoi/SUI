//
//  BookRow.swift
//  State&Binding_2
//
//  Created by dopamine100 on 2020/03/04.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct BookRow: View {
  @Binding var book: Book
  @ObservedObject var user: User
  
  var body: some View {
    
    NavigationLink(destination: BookDetailView(book: $book, user: user)) {
      VStack {
        Text(book.title)
        Image(systemName: book.imageName)
      }
    }
    
  } // body
}

struct BookRow_Previews: PreviewProvider {
  static var previews: some View {
    BookRow(book: .constant(Book.demoBooks.randomElement()!), user: User.exampleUser)
  }
}
