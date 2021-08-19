//
//  ResultScreenViewModel.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/16/21.
//

import SwiftUI

final class ResultViewModel: ObservableObject {
   
   private let data: ResultModel = .shared
   
   public var statisticData: (Int, Int, Int, Int) {
      (data.games, data.bets, data.winBets, data.lostBets)
   }
   
   public var chartData: Array<UnitPoint> {
      data.chartData
   }
   
   public var roi: Double {
      data.roi
   }
   
   public var bankroll: Double {
      data.bankroll
   }
   
   public var bankrollChange: Double {
      data.bankrollChange
   }
}
