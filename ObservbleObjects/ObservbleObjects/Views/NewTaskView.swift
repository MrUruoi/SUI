//
//  NewTaskView.swift
//  ObservbleObjects
//
//  Created by dopamine100 on 2020/02/20.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
    
    var taskStore: TaskStore
    @Environment(\.presentationMode) var presentationMode
    @State var text = ""
    
    var body: some View {
        Form {
            TextField("Placeholder", text: $text)
            Button("Add") {
                self.taskStore.tasks.append(Task(name: self.text))
                self.presentationMode.wrappedValue.dismiss()
            }
            .disabled(text.isEmpty)
        }
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView( taskStore: TaskStore() )
    }
}
