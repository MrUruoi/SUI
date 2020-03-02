/* List
 A List allows you to iterate over a collection of data and produce a scrollable View creating repeated, similar and grouped components.
 */

/* Form
 Whenever you want to collect data from your user, SwiftUI supplies you with a handy component that looks and feels like a standard iOS form experience called the Form component.
 */

import SwiftUI

struct someStruct: Identifiable {
  let id = UUID()
  var str: String
}

extension someStruct {
  static let structList: [someStruct] = [
    someStruct(str: "11"),
    someStruct(str: "22"),
    someStruct(str: "33")
  ]
}

struct ContentView: View {
  
  @State private var selectedIndex = 0
  @State private var isOn = false
  @State private var textValue = ""
  
  let list = someStruct.structList
  
  var body: some View {

//    // 1
//    List {
//      ForEach(0..<5) {
//        Text("\($0)").tag($0)
//      }
//    }
    
    // 2
//    List {
//      Section(header: Text("header"), footer: Text("footer")) {
//        ForEach(0..<5) { Text("\($0)").tag($0) }
//      }
//      //.listStyle(GroupedListStyle())
//    }
    
    // 3
    NavigationView {
      Form {
        
        Section {
          Picker(selection: $selectedIndex, label: Text("label")) {
            ForEach(0..<list.count) {
              Text(self.list[$0].str).tag($0)
            }
          }
        }
        
        Section {
          Toggle(isOn: $isOn) {
            Text("Toggle...")
          }
          if isOn {
            Text("someText...")
          }
        }
        
        Section {
          TextField("TextField...", text: $textValue)
        }
        
      }
    .navigationBarTitle("nabigationBarTitle...")
    }
    
  }
  
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
