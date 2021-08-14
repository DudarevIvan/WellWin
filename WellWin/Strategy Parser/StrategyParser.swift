//
//  StrategyParser.swift
//  WellWin
//
//  Created by Ivan Dudarev on 8/14/21.
//

import Foundation

final class StrategyParser {
   
   static var shared: StrategyParser = .init()
   
   private let resultModel: ResultModel = .shared
   
   private init() {}
}
