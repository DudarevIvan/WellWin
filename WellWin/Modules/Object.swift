//
//  Object.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/25/21.
//

import Foundation

protocol Object {
   
   var name: String { get }
   var priority: Priority { get }
   var selectionСriteria: Array<Criterion> { get }
}
