//
//  RecommendedRow.swift
//  State&Binding_2
//
//  Created by dopamine100 on 2020/03/04.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct RecommendedRow: View {
  @Binding var book: Book
  
  var body: some View {
    
    VStack {
      Text(verbatim: "FearturedBook")
      Text(book.title)
      Image(systemName: book.imageName)
    }
    
  } // body
  
}

struct RecommendedRow_Previews: PreviewProvider {
  static var previews: some View {
    RecommendedRow(book: .constant(Book.demoBooks.randomElement()!))
  }
}
