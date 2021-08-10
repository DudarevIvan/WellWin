//
//  ResultData.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

// MARK: Used as a model for the result screen
final class ResultData {
   
   static var shared: ResultData = .init()
   
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
