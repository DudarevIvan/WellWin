//
//  MainView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

struct MainView: View {
   
   var body: some View {
      NavigationControllerView({CLSScreen()}, .custom(.asymmetric(insertion: .slide, removal: .slide)))
   }
}
