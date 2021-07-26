//
//  TeamsObject.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import Foundation
 
final class TeamsObject: Object {
   
   static let shared: TeamsObject = .init()
   
   private init() {}
   
   var name: Array<String> = .init(arrayLiteral: "ht", "at")
   var priority: Priority = .hight
   var selectionСriteria: Array<Criterion> = .init()
}
