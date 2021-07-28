//
//  ParsingObjects.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import Foundation

final class ParsingObjects {
   
   private let moneyManagementObject: MoneyManagementObject
   private let teamsObject: TeamsObject
   private let refereesObject: RefereesObject
   private let goalsObject: GoalsObject
   
   init() {
      self.moneyManagementObject = .shared
      self.teamsObject = .shared
      self.refereesObject = .shared
      self.goalsObject = .shared
   }
   
   private func parsingCondition() {
      
   }
}
