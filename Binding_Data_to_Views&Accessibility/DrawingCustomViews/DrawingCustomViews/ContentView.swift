import SwiftUI

struct ContentView: View {
  
  @State var isShowing = false
  
  var body: some View {
    
//    // 1
//    Path { path in
//      path.addRoundedRect(
//        in: CGRect(x: 0, y: 0, width: 100, height: 100),
//        cornerSize: CGSize(width: 10, height: 10)
//      )
//    }
//    .fill(Color.rayWenderlichGreen)
    
//    // 2
//    GeometryReader { proxy in
//      Path { path in
//        path.addRoundedRect(
//          in: proxy.frame(in: .local),
//          cornerSize: CGSize(width: 10, height: 10))
//      }
//      .fill(Color.rayWenderlichGreen)
//    }
//    .frame(width: 200, height: 200)
    
    // 3
    GeometryReader { proxy in
      ZStack {
        
        if self.isShowing {
        
          ScaledShape(
            shape: Circle(),
            scale: CGSize(
              width: proxy.frame(in: .local).size.width,
              height: proxy.frame(in: .local).size.height
            )
          )
          .fill(
            LinearGradient(gradient: Gradient(colors: [Color.rayWenderlichGreen, .green, .red]),
                           startPoint: UnitPoint(x: 0.25, y: 0.92),
                           endPoint: UnitPoint(x: 0.85, y: 0.14)))
          .animation(.linear)
          
          ForEach(Range(0...10)) { iteration in
            OffsetShape(
              shape: Circle(),
              offset: CGSize(width: iteration * 10, height: iteration * 10))
              .fill(Color.catPurple
            )
            .animation(.linear)
          }
          
        }
          
        Path { path in
          path.addRoundedRect(
            in: proxy.frame(in: .local),
            cornerSize: CGSize(width: 10, height: 10)
          )
        }
        .fill(Color.rayWenderlichGreen)
        .animation(.linear)
        
        VStack {
          RayLogoShape()
            .fill(Color.white)
            .aspectRatio(1, contentMode: .fit)
            .padding(9)
            
          
          Button(action: {
            withAnimation {
              self.isShowing.toggle()
            }
          }) {
            Text("show Ray Logo")
              .font(Font.system(.callout))
              .foregroundColor(.white)
          }
          .padding()
          
        }
      
      }
    }
    .frame(width: 200, height: 200)
    
  }// body
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

extension Color {
  static let catPurple = Color(red: 128/255, green: 94/255, blue: 158/255)
  static let rayWenderlichGreen = Color(red: 21/255, green: 132/255, blue: 67/255)
}

struct RayLogoShape: Shape {
  
  func path(in rect: CGRect) -> Path {
    Path { path in
      path.move(to: CGPoint(x: 0, y: 111))
      path.addLine(to: CGPoint(x: 111, y: 111))
      path.addLine(to: CGPoint(x: 111, y: 16.79))
      path.addLine(to: CGPoint(x: 72.64 , y: 83.44))
      path.addLine(to: CGPoint(x: 57.36, y: 56.31))
      path.addLine(to: CGPoint(x: 39.98, y: 83.97))
      
      path.addCurve(
        to: CGPoint(x: 24.83, y: 47.88),
        control1: CGPoint(x: 39.98, y: 83.97),
        control2: CGPoint(x: 28.39, y: 56.31))
      path.addCurve(
        to: CGPoint(x: 49.20, y: 17.85),
        control1: CGPoint(x: 29.18, y: 44.72),
        control2: CGPoint(x: 49.20, y: 33.13))
      path.addCurve(
        to: CGPoint(x: 0, y: 0),
        control1: CGPoint(x: 49.20, y: 2.57),
        control2: CGPoint(x: 15.01, y: 0))
      path.addLine(to: CGPoint(x: 0, y: 111))
      
      
    }
  }
  
}

/* Custom Shapes
 Conform to 'Shape' protocol
 Supply path(in rect:_) implementation
 */

/* Path Component
 Returns a path inside of the current coordinate space
 Uses regular CGPoints to draw
 */

/* Path Operations
 Move to point
 Add line
 Add Arc
 Add Elipse
 Add Quadratic Curve
 More...
 */

/* Path Fills
 Color
 View
 Gradient
 */

