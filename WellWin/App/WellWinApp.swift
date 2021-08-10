//
//  WellWinApp.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

@main
struct WellWinApp: App {
      
   var body: some Scene {
      WindowGroup {
         NavigationControllerView({MainView()}, .custom(.asymmetric(insertion: .slide, removal: .slide)))
            .preferredColorScheme(.light)
      }
   }
}
