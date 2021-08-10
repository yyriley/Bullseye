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
    
    func points(sliderValue: Int) -> Int {
      let difference = abs(target - sliderValue)
      let bonus: Int
      
      if difference == 0 {
        bonus = 100
      } else if difference <= 2 {
        bonus = 50
      } else {
        bonus = 0;
      }
      return 100 - difference + bonus;
    }
  
  //mutating because it changes the values inside the struct
  mutating func startNewRound(points : Int) {
    score += points
    round += 1;
    target = Int.random(in: 1...100)
  }
  
  mutating func restart() {
    target = Int.random(in: 1...100)
    score = 0
    round = 1
  }
}
