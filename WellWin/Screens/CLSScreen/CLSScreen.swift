//
//  CLSScreen.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/22/21.
//

import SwiftUI

struct CLSScreen: View, NavigationTitle  {
   
   @State private(set) var title: String = "Wellwin"
   @State private var showSeasons = false
   
   @ObservedObject var gamesViewModel: GamesViewModel = .init()
   
   var body: some View {
      ZStack {
         Color.white
            .ignoresSafeArea()
         VStack {
            if let countries = gamesViewModel.games.countries {
               ScrollView(.vertical, showsIndicators: false) {
                  
                  ForEach(countries) { country in
                     if let leagues = countries[country.id!].leagues {
                        ForEach(leagues) { league in
                           NavigationLink(destination: StrategyScreen(pathArchive: "")) {
                              CountryView(country: country.name!)
                           }
                           Divider()
                        }
                        .background(Color.white)
                     }
                  }
                  
                  ForEach(countries) { country in
                     NavigationLink(destination: StrategyScreen(pathArchive: "")) {
                        CountryView(country: country.name!)
                     }
                  }
               }
               .padding(.top)
            }
            Spacer()
         }
      }
   }
}

struct CLSScreen_Previews: PreviewProvider {
   static var previews: some View {
      CLSScreen()
   }
}
