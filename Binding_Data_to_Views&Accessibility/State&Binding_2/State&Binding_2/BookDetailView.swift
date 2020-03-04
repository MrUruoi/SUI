//
//  BookDetailView.swift
//  State&Binding_2
//
//  Created by dopamine100 on 2020/03/04.
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
        case(true, nil): // The book wasn't there, so add it to the array
          self.user.likedBooks.append(self.book)
        case(false, let index?): // We fount that book, so remove it from the array
          self.user.likedBooks.remove(at: index)
        default:
          break
        }
      }) {
        Text("👍 Like")
        .padding()
          .foregroundColor(book.isLiked ? .secondary : .primary)
          .background(book.isLiked ? Color.green : Color.white)
      }
    }
    
  } // body

}

struct BookDetailView_Previews: PreviewProvider {
  static var previews: some View {
    BookDetailView(book: .constant(Book.demoBooks.randomElement()!), user: User.exampleUser)
  }
}
