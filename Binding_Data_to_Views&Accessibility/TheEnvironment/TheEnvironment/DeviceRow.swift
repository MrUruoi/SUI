//
//  DeviceRow.swift
//  TheEnvironment
//
//  Created by dopamine100 on 2020/03/06.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct DeviceRow: View {
  var device: Device
  
  @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
  @Environment(\.colorScheme) var colorScheme: ColorScheme
  
  var size: CGFloat {
    return horizontalSizeClass == .compact ? 150 : 300
  }
  
  var body: some View {
    VStack {
      Image(systemName: device.imageName)
        .resizable()
        .frame(width: size, height: size)
      
      Text(device.name)
    }
    .padding(colorScheme == .dark ? 20 : 0)
    .background(colorScheme == .dark ? Color.red : Color.green)
  }
}

struct DeviceRow_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      DeviceRow(device: Device.demoDevices.randomElement()!)
        .previewLayout(.sizeThatFits)
        //.environment(\.sizeCategory, .large)
        .environment(\.horizontalSizeClass, .regular)
      DeviceRow(device: Device.demoDevices.randomElement()!)
      .previewLayout(.sizeThatFits)
      .environment(\.horizontalSizeClass, .compact)
    }
    
    
  }
}
