//
//  ResultData.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

final class ResultModel {
   
   static var shared: ResultModel = .init()
   
   private var archiveViewModel: ArchiveViewModel = ArchiveViewModel.shared
   
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
   public var win: Dictionary<String, Array<String>> = .init()
   // Loss
   public var loss: Dictionary<String, Int> = ["Total games": 127, "Bets": 23, "Win": 214,"Loss": 7]
   
   private init() {
      var win: Dictionary<String, Array<String>> = ["#": [], "Date": [], "Teams": [], "Result": []]
      for item in 0..<archiveViewModel.archive.ht!.count {
         win["#"]?.append(String(item))
         win["Date"]?.append(archiveViewModel.archive.data![item])
         win["Teams"]?.append("\(archiveViewModel.archive.ht![item])" + " - " + "\(archiveViewModel.archive.at![item])")
         win["Result"]?.append(String(item))
      }
      self.win = win
      for i in 0..<50 {
         self.chartData.append(UnitPoint(x: CGFloat(i), y: CGFloat.random(in: -25.0..<40.0)))
      }
   }
}
