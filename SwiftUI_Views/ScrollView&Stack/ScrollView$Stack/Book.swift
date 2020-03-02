//
//  Book.swift
//  ScrollView$Stack
//
//  Created by dopamine100 on 2020/02/27.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct Book: Identifiable {
  var id = UUID()
  var title: String
  var imageName: String
}

extension Book {
  static let demoBooks = [
    Book(title: "book1", imageName: "book"),
    Book(title: "book1", imageName: "book.fill"),
    Book(title: "book1", imageName: "book.circle"),
    Book(title: "book1", imageName: "book.circle.fill"),
  ]
}
