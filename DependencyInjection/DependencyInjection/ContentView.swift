//
//  ContentView.swift
//  DependencyInjection
//
//  Created by dopamine100 on 2020/02/15.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var taskStore: TaskStore
    
    var body: some View {
        List(taskStore.tasks) { task in
            Text(task.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( taskStore: TaskStore() )
    }
}
