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
   
   @State var search: String = ""
   
   @ObservedObject var gamesViewModel: GamesViewModel = .init()
   @ObservedObject var archiveViewModel: ArchiveViewModel = ArchiveViewModel.shared
      
   var body: some View {
      ZStack {
         Color.white
            .ignoresSafeArea()
         VStack {
            if let countries = gamesViewModel.games.countries {
               SearchView(searchText: $search)
                  .background(Color("gray"))
               ScrollView(.vertical, showsIndicators: false) {
                  
                  ForEach(countries) { country in
                     if let leagues = countries[country.id!].leagues {
                        ForEach(leagues.filter{$0.name!.hasPrefix(search) || search == ""}) { league in
                           if (country.name! == search && search != "") {
                              
                           }
                           VStack{
                              CountryView(country: country.name!, league: league.name!)
                                 .onTapGesture {
                                    self.seasons = league.seasons!
                                    self.showSeasons = true
                                 }
                           Rectangle()
                              .fill(Color.black.opacity(0.1))
                              .frame(height: 2)
                              .frame(maxWidth: .infinity)
                           }
                        }
                        .resignKeyboardOnDragGesture()
                        .background(Color("gray"))
                     }
                  }
                  .background(Color("gray"))
               }
               .padding(.top)
               .background(Color("gray"))
            }
         }
         .background(Color("gray"))
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
