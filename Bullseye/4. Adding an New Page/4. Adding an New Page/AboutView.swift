//
//  AboutView.swift
//  4. Adding an New Page
//
//  Created by dopamine100 on 2020/01/18.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("🎯 Bullseye 🎯")
            Text("qwer asdf zxcv qwer asdf zxcv")
            Text("][po ';lk /.,m ][po ';lk /.,m ][po ';lk /.,m ][po ';lk /.,m ][po ';lk /.,m ][po ';lk /.,m" +
            "][po ';lk /.,m ][po ';lk /.,m ][po ';lk /.,m ][po ';lk /.,m ][po ';lk /.,m ][po ';lk /.,m").lineLimit(nil)
            Text("qwer")
        }
    .navigationBarTitle("About Bullseye")
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414))
    }
}
