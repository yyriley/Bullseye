//
//  Shapes.swift
//  Bullseye
//
//  Created by Yrua Riley on 8/6/21.
//

import SwiftUI

struct Shapes: View {
  var body: some View {
    VStack {
      Circle()
      //.fill(Color.blue)
        .strokeBorder(Color.blue, lineWidth: Constants.General.strokedWidth)
        .frame(width: 200, height: 100)
      Capsule()
        .fill(Color.blue)
        .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
      Ellipse()
        .fill(Color.blue)
        .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
      RoundedRectangle(cornerRadius: 20)
        .fill(Color.blue)
        .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
    }
    .background(Color.red)
   
  }
}

struct Shapes_Previews: PreviewProvider {
  static var previews: some View {
    Shapes()
  }
}
