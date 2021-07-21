//
//  AppInitializer.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import Foundation

final class AppInitializer {
   
   private let router: Router
   private let parsingConditions: ParsingConditions
   private let archiveParser: ArchiveParser
   private let betting: Betting
   private let resultData: ResultData
   
   public init() {
      self.router = .shared
      self.parsingConditions = .init()
      self.archiveParser = .init()
      self.betting = .init()
      self.resultData = .shared
   }
}
