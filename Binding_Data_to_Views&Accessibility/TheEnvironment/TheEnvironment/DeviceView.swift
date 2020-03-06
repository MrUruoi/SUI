//
//  DeviceView.swift
//  TheEnvironment
//
//  Created by dopamine100 on 2020/03/06.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct DeviceView: View {
  
  var devices = Device.demoDevices
  
  var body: some View {
    
    Form {
      Section(header: Text("Devices")) {
        ForEach(devices) { device in
          
          DeviceRow(device: device)
            .padding()
          
        }
      }
    }
    
  }// body
}

struct DeviceView_Previews: PreviewProvider {
  static var previews: some View {
    DeviceView(devices: Device.demoDevices)
  }
}
