//
//  Condition.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/25/21.
//

import Foundation

enum Condition {
   
   case only
   case exclude
   case all
   
   init() {
      self = .all
   }
}
