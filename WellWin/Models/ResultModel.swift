//
//  ResultData.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

final class ResultModel {
   
   static var shared: ResultModel = .init()
   
   // Chart data
   public var chartData: Array<UnitPoint> = .init()
   // ROI
   public var roi: Double = -122.4
   // Profit
   public var bankroll: Double = 1200.4
   // Profit change
   public var bankrollChange: Double = -142.0
   // Statistic
   public var games: Int = 217
   public var bets: Int = 154
   public var winBets: Int = 31
   public var lostBets: Int = 129
   // Win
   public var gamesWin: Int = 217
   public var betsWin: Int = 154
   public var winBetsWin: Int = 31
   public var lostBetsWin: Int = 129
   // Loss
   public var gamesLoss: Int = 217
   public var betsLoss: Int = 154
   public var winBetsLoss: Int = 31
   public var lostBetsLoss: Int = 129
   
   private init() {
      for i in 0..<50 {
         self.chartData.append(UnitPoint(x: CGFloat(i), y: CGFloat.random(in: -25.0..<40.0)))
      }
   }
}
