//
//  ParsingConditions.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import Foundation

final class ParsingConditions {
   
   private let moneyManagementObject: MoneyManagementObject
   private let teamsObject: TeamsObject
   private let refereesObject: RefereesObject
   private let goalsObject: GoalsObject
   
   init() {
      self.moneyManagementObject = .init()
      self.teamsObject = .init()
      self.refereesObject = .init()
      self.goalsObject = .init()
   }
}
