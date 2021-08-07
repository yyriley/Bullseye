//
//  BackgroundView.swift
//  Bullseye
//
//  Created by Yrua Riley on 8/7/21.
//

import SwiftUI

struct BackgroundView: View {
  @Binding var game: Game
  var body: some View {
    VStack {
      TopView(game: $game)
      Spacer()
      BottomView(game: $game)
    }
    .padding()
    .background(
      Color("BackgroundColor")
        .edgesIgnoringSafeArea(.all)
    )
  }
}

struct TopView: View {
  @Binding var game: Game
  var body: some View {
    HStack{
      RoundedImageViewStroked(systemName: "arrow.counterclockwise")
      Spacer()
      RoundedImageViewFilled(systemName: "list.dash")
    }
  }
}

struct NumberView: View {
  var title: String
  var test: String
  
  var body: some View {
    Color.gray
      .frame(width: 56.0, height: 56.0)
  }
}

struct BottomView: View {
  @Binding var game: Game
  var body: some View {
    HStack{
      NumberView(title: "Score", test: String(game.score))
      Spacer()
      NumberView(title: "Round", test: String(game.round))
    }
  }
}

struct BackgroundView_Previews: PreviewProvider {
  static var previews: some View {
    BackgroundView(game: .constant(Game()))
  }
}
