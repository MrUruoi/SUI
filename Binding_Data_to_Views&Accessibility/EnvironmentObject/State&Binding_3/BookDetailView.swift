//
//  BookDetailView.swift
//  State&Binding_3
//
//  Created by dopamine100 on 2020/03/05.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct BookDetailView: View {
  @Binding var book: Book
  @ObservedObject var user: User
  
  var body: some View {
    
    VStack {
      Text(book.title)
      Image(systemName: book.imageName)
      Button(action: {
        self.book.isLiked.toggle()
        
        switch(self.book.isLiked, self.user.likedBooks.firstIndex(of: self.book)) {
        case(true, nil): //
          self.user.likedBooks.append(self.book)
          print(self.user.likedBooks)
        case(false, let index?): //
          self.user.likedBooks.remove(at: index)
          print(self.user.likedBooks)
        default:
          break
        
        }
      }) {
        Image(systemName: book.isLiked ? "star.fill" : "star")
      }
    }
    
  } // body
}

struct BookDetailView_Previews: PreviewProvider {
  static var previews: some View {
    BookDetailView(book: .constant(Book.demoBooks.randomElement()!), user: User.exampleUser)
  }
}
