//
//  SharedModel.swift
//  WellWin
//
//  Created by Ivan Dudarev on 8/12/21.
//

import Foundation

final class SharedModel {
   
   static let shared: SharedModel = .init()
   
   private let parser: StrategyParser = .shared
   
   private init() {}
   
}
