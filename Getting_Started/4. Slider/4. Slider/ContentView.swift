//
//  ContentView.swift
//  4. Slider
//
//  Created by dopamine100 on 2020/01/09.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Text("1")
            Slider(value: .constant(10))
            Text("100")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
