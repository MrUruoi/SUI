//
//  Task.swift
//  Lists
//
//  Created by dopamine100 on 2020/02/13.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import Foundation

struct Task1 {
    var name: String
}

struct Task2 {
    var id = UUID()
    var name: String
}

struct Task3: Identifiable {
    var id = UUID()
    var name: String
}
