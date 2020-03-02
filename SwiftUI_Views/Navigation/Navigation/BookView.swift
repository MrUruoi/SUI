//
//  BookView.swift
//  Navigation
//
//  Created by dopamine100 on 2020/03/02.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct BookView: View {
  var book: Book
  var proxy: GeometryProxy
  
  var body: some View {
    
    VStack {
      Text(book.title)
      Image(systemName: book.imageName)
    }
    
  }
  
}

struct BookView_Previews: PreviewProvider {
  static var previews: some View {
    GeometryReader { proxy in
      BookView(book: Book.demoBooks.randomElement()!, proxy: proxy)
    }
  }
}
