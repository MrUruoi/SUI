//
//  ContentView.swift
//  Lists
//
//  Created by dopamine100 on 2020/02/13.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var taskStore = TaskStore()
    
    var body: some View {
//        // - 1 -
//        List(taskStore.tasks1.indices, rowContent: { index in
//            Text(self.taskStore.tasks1[index].name)
//        })
        
//        // - 2 -
//        // You just need to supply that using KeyPath syntax,
//        // which starts off with a backslash followed by a dot.
//        List(taskStore.tasks2, id: \.id, rowContent: { task in
//            Text(task.name)
//        })
        
        // - 3 -
        List(taskStore.tasks3) { task in
            Text(task.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
