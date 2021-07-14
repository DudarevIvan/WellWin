//
//  WellWinApp.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

@main
struct WellWinApp: App {
   
   private let initializer: AppInitializer = .init()
   
   var body: some Scene {
      WindowGroup {
         MainScreen()
      }
   }
}
