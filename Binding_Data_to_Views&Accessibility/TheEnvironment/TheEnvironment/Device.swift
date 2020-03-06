//
//  Device.swift
//  TheEnvironment
//
//  Created by dopamine100 on 2020/03/06.
//  Copyright © 2020 Mr.Uruoi. All rights reserved.
//

import SwiftUI

struct Device: Identifiable {
  var id = UUID()
  var name: String
  var imageName: String
}

extension Device {
  static let demoDevices = [
    Device(name: "Keyboard", imageName: "keyboard"),
    Device(name: "TV", imageName: "tv"),
    Device(name: "Printer", imageName: "printer"),
    Device(name: "Headphones", imageName: "headphones")
  ]
}
