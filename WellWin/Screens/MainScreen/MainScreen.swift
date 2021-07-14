//
//  MainScreen.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

struct MainScreen: View {
   
   @ObservedObject var gamesViewModel: GamesViewModel = .init()
   
    var body: some View {
      if gamesViewModel.games.countries != nil {
         Text(gamesViewModel.games.countries![23].name!)
      }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
