//
//  Book.swift
//  State&Binding_2
//
//  Created by dopamine100 on 2020/03/04.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct Book: Identifiable {
  var id = UUID()
  var title: String
  var imageName: String
  var isLiked = false
}

extension Book: Equatable {
  static func == (lhs: Book, rhs: Book) -> Bool {
    return lhs.id == rhs.id
  }
}

extension Book {
  static let demoBooks = [
    Book(title: "book1", imageName: "book"),
    Book(title: "book2", imageName: "book.fill"),
    Book(title: "book3", imageName: "book.circle"),
    Book(title: "book4", imageName: "book.circle.fill")
  ]
}
