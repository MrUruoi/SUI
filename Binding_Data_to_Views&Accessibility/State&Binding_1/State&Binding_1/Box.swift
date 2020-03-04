//
//  Box.swift
//  State&Binding_1
//
//  Created by dopamine100 on 2020/03/03.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import Foundation

final class Box<Value> {
  var value: Value
  
  init(_ value: Value) {
    self.value = value
  }
}
