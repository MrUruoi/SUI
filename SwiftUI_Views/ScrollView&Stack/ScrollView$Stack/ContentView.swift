//
//  ContentView.swift
//  ScrollView$Stack
//
//  Created by dopamine100 on 2020/02/27.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  var body: some View {
    
    // 1
    //    ScrollView(.horizontal) {
    //      HStack {
    //        ForEach(Book.demoBooks) { book in
    //          VStack {
    //            Text(book.title)
    //              .padding([.leading, .top, .trailing])
    //            Image(systemName: book.imageName)
    //            .resizable()
    //            .frame(width: 100, height: 100)
    //            .padding()
    //          }
    //          .background(Color.white)
    //          .cornerRadius(10)
    //          .padding()
    //          .shadow(radius: 3)
    //        }
    //      }
    //    }
    
    // 2
    //    ScrollView(.horizontal, showsIndicators: false) {
    //      HStack {
    //        ForEach(Book.demoBooks) { book in
    //          VStack {
    //            Text(book.title)
    //              .padding([.leading, .top, .trailing])
    //              .multilineTextAlignment(.center)
    //            Image(systemName: book.imageName)
    //            .resizable()
    //            .scaledToFit()
    //            .padding()
    //          }
    //        .frame(width: 150, height: 150)
    //          .background(Color.white)
    //          .cornerRadius(10)
    //          .padding()
    //          .shadow(radius: 3)
    //        }
    //      }
    //    }
    
    // 3
    ScrollView(.horizontal, showsIndicators: false) {
      HStack {
        ForEach(Book.demoBooks) { book in
          GeometryReader { proxy in
            
            VStack {
              Text(book.title)
                .padding([.leading, .top, .trailing])
                .multilineTextAlignment(.center)
              Image(systemName: book.imageName)
                .resizable()
                .scaledToFit()
            }
            .frame(width: max(proxy.size.width - proxy.frame(in: .global).midX, proxy.size.width),
                   height: proxy.size.height - 50)
            .background(Color.white)
            .cornerRadius(10)
            .padding()
            .shadow(radius: 3)
            .layoutPriority(1)
            .rotation3DEffect(
              Angle(degrees: Double(proxy.frame(in: .global).midX) / 40),
              axis: (x: -4, y:-3, z: -3)
            )
          }
        .frame(width: 200, height: 300)
        }
      }
    }
    
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

