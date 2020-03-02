/*
 ObservableObjects
 
 Let's take your TaskStore,
 observe changes to its tasks array,
 and update ContentView's body to reflect those changes.
 
 The first step in the process is to import Combine in TaskStore.siwft
 
 @Published
 The idea is, when a new version of your array shows up, like when you add an element to it,
 anything that subscribes to be notified of such a change, will be.
 But TaskStore is a reference type, so even when its tasks changes,
 the TaskStore instance itself is not considered to have changed.
 In order to tie the ideas together, you adopt the ObservableObject protocol.
 Now, TaskStore will listen for changes to its @Published variable,
 and when they happen, anything observing the TaskStore can respond.
 All we need to do is mark it with the corresponding attribute, @ObservedObject
 */

import Combine

class TaskStore: ObservableObject {
    @Published var tasks = [
        "qwer",
        "asdf",
        "zxcv",
        "1234"
        ].map { Task(name: $0) }
}
