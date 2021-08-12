//
//  StrategySharedModel.swift
//  WellWin
//
//  Created by Ivan Dudarev on 8/12/21.
//

import Foundation

final class SharedModel {
   
   static let shared: SharedModel = .init()
   
   let resultData: ResultModel = .shared
   
   private init() {}
   
}
