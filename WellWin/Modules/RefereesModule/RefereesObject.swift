//
//  RefereesObject.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import Foundation

final class RefereesObject: Object {
   
   static let shared: RefereesObject = .init()
   
   private init() {}
   
   var name: Array<String> = .init(arrayLiteral: "referee")
   var priority: Priority = .hight
   var selectionСriteria: Array<Criterion> = .init()
}
