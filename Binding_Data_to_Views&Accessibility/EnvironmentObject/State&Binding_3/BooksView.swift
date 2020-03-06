//
//  BooksView.swift
//  State&Binding_3
//
//  Created by dopamine100 on 2020/03/05.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct BooksView: View {
  @Binding var books: [Book]
  @ObservedObject var user: User
  
  var body: some View {
    HStack {
      ForEach(Range(0...books.count-1)) { index in
        GeometryReader { proxy in
          BookRow(book: self.$books[index], user: self.user, proxy: proxy)
        }
        .frame(width: 200, height: 300)
      }
    }
  }
}

struct BooksView_Previews: PreviewProvider {
  static var previews: some View {
    BooksView(books: .constant(Book.demoBooks), user: User.exampleUser)
  }
}
