//
//  User.swift
//  State&Binding_2
//
//  Created by dopamine100 on 2020/03/04.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

class User: ObservableObject {
  var imageName: String
  var name: String
  @Published var likedBooks: [Book]
  
  init(name: String, imageName: String, likedBooks: [Book] = []) {
    self.name = name
    self.imageName = imageName
    self.likedBooks = likedBooks
  }
}

extension User {
  static let exampleUser = User(name: "Uruoi", imageName: "person")
}
