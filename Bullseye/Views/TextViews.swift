//
//  TextViews.swift
//  Bullseye
//
//  Created by Yrua Riley on 8/6/21.
//

import SwiftUI

struct InstructionText: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .kerning(2.0)
      .bold()
      .multilineTextAlignment(.center)
      .lineSpacing(4.0)
      .font(.footnote)
      .foregroundColor(Color("TextColor"))  }
}

struct BigNumberText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .kerning(-1.0)
      .font(.largeTitle)
      .fontWeight(.black)
      .foregroundColor(Color("TextColor"))
  }
}


struct SliderLabelText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .foregroundColor(Color("TextColor"))
      .frame(width: 35)
  }
}

struct LabelText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .foregroundColor(Color("TextColor"))
      .kerning(1.5)
      .font(.caption)
  }
}

struct BodyText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .font(.headline)
      .fontWeight(.semibold)
      .multilineTextAlignment(.center)
      .lineSpacing(12.0)
  }
}

struct ButtonText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .padding()
      .frame(maxWidth: .infinity)
      .background(Color.accentColor)
      .cornerRadius(12.0)
      .foregroundColor(.white)
  }
}

struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    VStack{
    InstructionText(text: "Instructions")
    BigNumberText(text: "999")
    SliderLabelText(text: "1")
    LabelText(text: "Score")
    BodyText(text: "You scored 200 Points\n🎉🎉🎉")
      ButtonText(text: "Start New Round")
    }
    .padding()
  }
}
