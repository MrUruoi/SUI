//
//  BookDetailView.swift
//  Navigation
//
//  Created by dopamine100 on 2020/03/02.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct BookDetailView: View {
  
  var book: Book
  
  var body: some View {
    VStack {
      Text(book.title)
      Image(systemName: book.imageName)
    }
  }
  
}

struct BookDetailView_Previews: PreviewProvider {
  static var previews: some View {
    BookDetailView(book: Book.demoBooks.randomElement()!)
  }
}
