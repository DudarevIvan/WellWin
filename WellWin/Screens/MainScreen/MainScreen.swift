//
//  MainScreen.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

struct MainScreen: View {
   
   @ObservedObject var gamesViewModel: GamesViewModel = .init()
   //@ObservedObject var mainScreenViewModel: MainScreenViewModel = .init()
   
   var body: some View {
      //NavigationView {
      ZStack {
         Color(.systemGray6)
         VStack {
            if let countries = gamesViewModel.games.countries {
               ScrollView(.vertical, showsIndicators: false) {
                  ForEach(countries) { country in
                     CountryView(country: country.name!)
                  }
               }
            }
            Spacer()
         }
      }
      //.navigationBarTitle("WELLWIN", displayMode: .inline)
      //}
      .ignoresSafeArea()
   }
}

struct MainScreen_Previews: PreviewProvider {
   static var previews: some View {
      MainScreen()
   }
}
