//
//  TaskStore.swift
//  Lists
//
//  Created by dopamine100 on 2020/02/13.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

// The app is only going to have one TaskStore,
// but you'll need to use it across several screens,
// so a reference type that is a class is what you need TaskStore to be.
class TaskStore {
    var tasks1 = [
        "qwer",
        "asdf",
        "zxcv",
        "1234"
        ].map { Task1(name: $0) }
    
    var tasks2 = [
        "qwer",
        "asdf",
        "zxcv",
        "1234"
        ].map { Task2(name: $0) }
    
    var tasks3 = [
        "qwer",
        "asdf",
        "zxcv",
        "1234"
        ].map { Task3(name: $0) }
}
