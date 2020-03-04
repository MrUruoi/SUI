//
//  SettingsView.swift
//  State&Binding_2
//
//  Created by dopamine100 on 2020/03/04.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
  @ObservedObject var user: User
  
  var body: some View {
    
    NavigationView {
      List {
        Section(header: Text("User")) {
          Text(user.name)
        }
        Section(header: Text("Liked Books")) {
          ForEach(user.likedBooks) { book in
            HStack {
              Image(systemName: book.imageName)
              Text(book.title)
            }
          }
        }
      }
    }
    
  } // body
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView(user: User.exampleUser)
  }
}
