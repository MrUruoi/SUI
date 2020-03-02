/*
 Every SwiftUI view exists in an environment which is a storage container for information
 that it either needs to function, or, can be useful for you, as the programmer.
 The Environment value that we need is the NewModalView's presentationMode.
 That's a strucutre which lets us know if the sheets is presented and,
 allows us to programmatically dismiss the sheet.
 */

// Becuase the KeyPath is strongly-typed, you don't need to supply a type for your variable.

import SwiftUI

struct NewModalView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button("dismiss...") {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct NewModalView_Previews: PreviewProvider {
    static var previews: some View {
        NewModalView()
    }
}


