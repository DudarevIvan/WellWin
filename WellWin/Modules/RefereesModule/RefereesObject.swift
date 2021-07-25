//
//  RefereesObject.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import Foundation

struct RefereesObject: Object {
   
   var name: Array<String> = .init(arrayLiteral: "referee")
   var priority: Priority = .hight
   var selectionСriteria: Array<Criterion> = .init()
}
