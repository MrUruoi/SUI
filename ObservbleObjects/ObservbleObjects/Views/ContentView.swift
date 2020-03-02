//
//  ContentView.swift
//  ObservbleObjects
//
//  Created by dopamine100 on 2020/02/20.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var taskStore: TaskStore
    @State var modalIsPresented = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(taskStore.tasks) { task in
                    Text(task.name)
                }
            }
            .navigationBarTitle("Tasks")
            .navigationBarItems(
                leading: EditButton(),
                trailing: Button(action: {
                    self.modalIsPresented = true
                }) {
                    Image(systemName: "plus")
                }
            )
        }
        .sheet(isPresented: $modalIsPresented) {
            NewTaskView(taskStore: self.taskStore)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( taskStore: TaskStore())
    }
}
