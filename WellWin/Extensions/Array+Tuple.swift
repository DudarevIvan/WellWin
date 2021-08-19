//
//  Array+Tuple.swift
//  WellWin
//
//  Created by Ivan Dudarev on 8/15/21.
//

import Foundation

extension Array {
   init?<T>(tuple subject: T) {
      guard let array = Mirror(reflecting: subject).children.map(\.value) as? Self
      else { return nil }
      self = array
   }
}
