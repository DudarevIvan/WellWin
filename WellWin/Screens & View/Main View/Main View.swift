//
//  MainView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/22/21.
//

import SwiftUI

struct MainView: View {
   
   @State var showSeasons = false
   @State var seasons: Array<Seasons> = .init()
   @State var active: Bool = false
   
   @ObservedObject var gamesViewModel: GamesViewModel = .init()
   @ObservedObject var archiveViewModel: ArchiveViewModel = ArchiveViewModel.shared
      
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
                              CountryView(country: country.name!, league: league.name!)
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
         NavigationLinkCustom(isActive: active && archiveViewModel.archive.country != nil, destination: StrategyScreen()) { Text("") }
         SeasonsScreen(isShowing: $showSeasons, go: $active, seasons: $seasons)
      }
      .onAppear() {
         archiveViewModel.archive = .init()
      }
   }
}

struct CLSScreen_Previews: PreviewProvider {
   static var previews: some View {
      MainView()
   }
}
