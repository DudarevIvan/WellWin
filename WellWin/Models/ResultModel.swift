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
   var mainChartData: Array<UnitPoint> = .init()
   var roiChartData: Array<UnitPoint> = .init()
   
   private init() {
      for i in 0..<50 {
         self.mainChartData.append(UnitPoint(x: CGFloat(i), y: CGFloat.random(in: -25.0..<40.0)))
         //if i % 2 != 0 {
            self.roiChartData.append(UnitPoint(x: CGFloat(i), y: CGFloat.random(in: -25.0..<40.0)))
         //}
      }
   }
}
