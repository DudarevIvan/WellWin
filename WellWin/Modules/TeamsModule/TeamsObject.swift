//
//  TeamsObject.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import Foundation
 
struct TeamsObject: Object {
   
   var name: Array<String> = .init(arrayLiteral: "ht", "at")
   var priority: Priority = .hight
   var selectionСriteria: Array<Criterion> = .init()
}
