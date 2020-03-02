//
//  TaskStore.swift
//  DependencyInjection
//
//  Created by dopamine100 on 2020/02/15.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

class TaskStore {
    var tasks=[
        "qwer",
        "asdf",
        "zxcv",
        "1234"
    ].map { Task(name: $0) }
}
