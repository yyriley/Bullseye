//
//  ContentView.swift
//  Bullseye
//
//  Created by Riley,Yrua  on 7/16/21.
//

import SwiftUI

struct ContentView: View {
  
  @State private var alertIsVisible = false
  @State private var sliderValue = 50.0
  @State private var game = Game()
  
  var body: some View {
    ZStack {
      Color("BackgroundColor")
        .edgesIgnoringSafeArea(.all)
      VStack {
        InstructionView(game: $game)
        HStack {
          Text("1")
            .bold()
            .foregroundColor(Color("TextColor"))
          Slider(value: self.$sliderValue, in: 1.0...100.0)
          Text("100")
            .bold()
            .foregroundColor(Color("TextColor"))
          
        }
        Button(action: {
          print("Hello")
          self.alertIsVisible = true
        }) {
          Text("Hit me".uppercased())
            .bold()
            .font(.title3)
        }
        .padding(20.0)
        .foregroundColor(Color.white)
        .background(
          ZStack {
            Color("ButtonColor")
            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
          }
        )
        .cornerRadius(21)
        .alert(isPresented: $alertIsVisible, content: {
          let roundedValue = Int(self.sliderValue.rounded())
          //return the alert we want to show
          return Alert(title: Text("Hello There"), message: Text("Slider Value is \(roundedValue).\n" + "You scored \(self.game.points(sliderValue: roundedValue)) points this round"), dismissButton: .default(Text("Awesome")))
        })
      }
    }
  }
}

struct InstructionView: View {
  @Binding var game: Game
  var body: some View {
    VStack{
      InstructionText(text: "🎯🎯🎯\nPut the bullseye as close as you can to ")
        .padding(.leading, 30.0)
        .padding(.trailing, 30.0)
      BigNumberText(text:String(game.target))
    }
  }
}


//The struct below controls the previews
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .previewLayout(.fixed(width: 568, height: 320))
    ContentView()
      .preferredColorScheme(.dark)
    ContentView()
      .preferredColorScheme(.dark)
      .previewLayout(.fixed(width: 568, height: 320))
  }
}
