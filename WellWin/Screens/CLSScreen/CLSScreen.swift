//
//  CLSScreen.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/22/21.
//

import SwiftUI

struct CLSScreen: View, NavigationTitle  {
   
   @State private(set) var title: String = "Wellwin"
   @State var showSeasons = false
   @State var seasons: Array<Seasons> = .init()
   
   @ObservedObject var gamesViewModel: GamesViewModel = .init()
   
   @ObservedObject private var router: Router = .shared
   
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
                           VStack{
                              CountryView(country: country.name!)
                                 .onTapGesture {
                                    self.seasons = league.seasons!
                                    self.showSeasons = true
                                 }
                           Divider()
                           }
                        }
                        .background(Color.white)
                     }
                  }
               }
               .padding(.top)
            }
         }
         SeasonsScreen(isShowing: $showSeasons, seasons: $seasons)
      }
   }
}

struct CLSScreen_Previews: PreviewProvider {
   static var previews: some View {
      CLSScreen()
   }
}
