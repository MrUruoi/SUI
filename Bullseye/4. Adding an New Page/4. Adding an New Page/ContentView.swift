//
//  ContentView.swift
//  4. Adding an New Page
//
//  Created by dopamine100 on 2020/01/18.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible = false
    @State var sliderValue = 50.0
    @State var target = Int.random(in: 1...100)
    @State var score = 0
    @State var round = 1
    let midnightBlue = Color(red: 0.0 / 255.0, green: 51.0 / 255.0, blue: 102.0 / 255.0)
    
    struct LabelSytle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.white)
                .font(Font.custom("Arial", size: 18))
                .modifier(Shadow())
        }
    }
    
    struct ValueStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.yellow)
                .font(Font.custom("Arial", size: 24))
                .modifier(Shadow())
        }
    }
    
    struct ButtonStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.black)
                .font(Font.custom("Arial", size: 12))
                .modifier(Shadow())
        }
    }

    struct Shadow: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .shadow(color: Color.black, radius: 5, x: 2, y: 2)
        }
    }
    
    var body: some View {
        VStack {
            Spacer()
    
            // Target row
            HStack {
                Text("Put the bullseye s close as you can to:").modifier(LabelSytle())
                Text("\(target)").modifier(ValueStyle())
            }
            Spacer()
            
            // Slider row
            HStack {
                Text("1").modifier(LabelSytle())
                Slider(value: $sliderValue, in: 1...100).accentColor(Color.green)
                Text("100").modifier(LabelSytle())
            }
            Spacer()
            
            // Button row
            Button(action: {
                self.alertIsVisible = true
            }) {
                Text("Hit Me!").modifier(ButtonStyle())
            }
            .alert(isPresented: $alertIsVisible) {
                return Alert(title: Text("> _<"),
                             message: Text("The slider's value is \(sliderValueRounded()).\n" +
                                "You scored \(self.pointsForCurrentRound()) points this round."),
                             dismissButton: .default(Text("Awesome!")) {
                                self.score += self.pointsForCurrentRound()
                                self.target = Int.random(in: 1...100)
                                self.round += 1
                            })
            }
            .background(Image("Button")).modifier(Shadow())
            Spacer()
            
            // Score row
            HStack {
                Button(action: {
                    self.startNewGame()
                }) {
                    HStack {
                        Image("StartOverIcon")
                        Text("Start Over").modifier(ButtonStyle())
                    }
                }
                .background(Image("Button")).modifier(Shadow())
                
                Spacer()
                
                Text("Score:").modifier(LabelSytle())
                Text("\(score)").modifier(ValueStyle())
                
                Spacer()
                
                Text("Round:").modifier(LabelSytle())
                Text("\(round)").modifier(ValueStyle())
                
                Spacer()
                
                NavigationLink(destination: AboutView()) {
                    HStack {
                        Image("InfoIcon")
                        Text("Info").modifier(ButtonStyle())
                    }
                }
                .background(Image("Button")).modifier(Shadow())
            }.padding(.bottom, 20)
            
        } // VStack
            .background(Image("Background"), alignment: .center)
            .accentColor(midnightBlue)
            .navigationBarTitle("Bullseye")
    } // body
    
    
    func pointsForCurrentRound() -> Int {
        100 - abs(target - sliderValueRounded())
    }
    
    func sliderValueRounded() -> Int {
        Int(sliderValue.rounded())
    }
    
    func startNewGame() {
        score = 0
        round = 1
        sliderValue = 50.0
        target = Int.random(in: 1...100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
