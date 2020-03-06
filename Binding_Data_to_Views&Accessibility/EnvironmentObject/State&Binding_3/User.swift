//
//  User.swift
//  State&Binding_3
//
//  Created by dopamine100 on 2020/03/05.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import Combine

class User: ObservableObject {
  var name: String
  var imageName: String
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
