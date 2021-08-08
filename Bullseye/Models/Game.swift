//
//  Game.swift
//  Bullseye
//
//  Created by Riley,Yrua  on 7/21/21.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {100 - abs(sliderValue - self.target)}
  
  //mutating because it changes the values inside the struct
  mutating func startNewRound(points : Int) {
    score += points
    round += 1;
    target = Int.random(in: 1...100)
  }
}
