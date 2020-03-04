//
//  RecommendedRow.swift
//  State&Binding_1
//
//  Created by dopamine100 on 2020/03/03.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct RecommendedRow: View {
  
  @Binding var book: Book
  
  var body: some View {
    
    VStack {
      Text(verbatim: "Featured Book")
      Text(book.title)
      Image(systemName: book.imageName)
    }
    
  } // body
  
}

struct RecommendedRow_Previews: PreviewProvider {
  static var previews: some View {
    RecommendedRow( book: .constant(Book.demoBooks.randomElement()!))
  }
}
