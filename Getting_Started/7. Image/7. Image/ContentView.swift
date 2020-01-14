// @1x Old non-retina devices
// @2x Retina screens
// @3x Retina HD

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible = false
    @State var sliderValue = 50.0
    @State var target = Int.random(in: 1...100)
    @State var score = 0
    @State var round = 1
    
    var body: some View {
        VStack {
            Spacer()
    
            // Target row
            HStack {
                Text("Put the bullseye s close as you can to:")
                Text("\(target)")
            }
            Spacer()
            
            // Slider row
            HStack {
                Text("1")
                Slider(value: $sliderValue, in: 1...100)
                Text("100")
            }
            Spacer()
            
            // Button row
            Button(action: {
                self.alertIsVisible = true
            }) {
                Text("Hit Me!")
            }
            .alert(isPresented: $alertIsVisible) {
                Alert(title: Text(""),
                      message: Text("The slider's vlue is ."),
                      dismissButton: .default(Text("zz")))
            }
            Spacer()
            
            // Score row
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Start Over")
                }
                Spacer()
                Text("Score:")
                Text("\(score)")
                Spacer()
                Text("Round:")
                Text("\(round)")
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Info")
                }
            }.padding(.bottom, 20)
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
