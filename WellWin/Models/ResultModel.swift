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
   public var statistic: Dictionary<String, Int> = ["Total games": 127, "Bets": 23, "Win": 214,"Loss": 7]
   // Win
   public var win: Dictionary<String, Array<Int>> = ["#": [1], "Date": [23], "Teams": [214], "Result": [7]]
   // Loss
   public var loss: Dictionary<String, Int> = ["Total games": 127, "Bets": 23, "Win": 214,"Loss": 7]
   
   private init() {
      for i in 0..<50 {
         self.chartData.append(UnitPoint(x: CGFloat(i), y: CGFloat.random(in: -25.0..<40.0)))
      }
   }
}
