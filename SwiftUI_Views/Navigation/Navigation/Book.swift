//
//  Book.swift
//  Navigation
//
//  Created by dopamine100 on 2020/03/02.
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
    Book(title: "book2", imageName: "book.fill"),
    Book(title: "book3", imageName: "book.circle"),
    Book(title: "book4", imageName: "book.circle.fill")
  ]
}

