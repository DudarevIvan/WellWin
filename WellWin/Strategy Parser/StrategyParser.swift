//
//  StrategyParser.swift
//  WellWin
//
//  Created by Ivan Dudarev on 8/14/21.
//

import SwiftUI

final class StrategyParser {
   
   static var shared: StrategyParser = .init()
   
   private let resultModel: ResultModel = .shared
   
   private init() {}
   
   func result() -> Bool {
      true
   }
}
