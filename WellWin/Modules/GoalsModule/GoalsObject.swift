//
//  GoalsObject.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import Foundation

final class GoalsObject {
   
   var name: Array<String> = .init(arrayLiteral: "htGoalsCount1half", "atGoalsCount1half", "htGoalsCount2half", "atGoalsCount2half", "htGoalsCountFt", "atGoalsCountFt", "htGoalsTime", "atGoalsTime")
   var priority: Priority = .hight
   var selectionСriteria: Array<Criterion> = .init()
}
