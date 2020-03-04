//
//  BooksView.swift
//  State&Binding_2
//
//  Created by dopamine100 on 2020/03/04.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct BooksView: View {
  @Binding var books: [Book]
  @ObservedObject var user: User
  
  var body: some View {
    
    HStack {
      ForEach(Range(0...books.count-1)) { iteration in
        BookRow(book: self.$books[iteration], user: self.user)
      }
    }
    
  } // body
  
}

struct BooksView_Previews: PreviewProvider {
  static var previews: some View {
    BooksView(books: .constant(Book.demoBooks), user: User.exampleUser)
  }
}
