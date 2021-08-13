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
         Color("gray")
            .ignoresSafeArea()
         VStack {
            // Select games
            ChooseGame()
               .environmentObject(gamesViewModel)
            .frame(maxWidth: .infinity)
            .frame(height: 20)
               .padding(.horizontal)
            
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
            Spacer()
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


struct ChooseGame: View {
   
   @EnvironmentObject var gamesViewModel: GamesViewModel
   
   var body: some View {
      HStack(spacing: 20) {
         Text("Games")
            .bold()
            .font(.title3)
            .foregroundColor(.white)
         Spacer()
         ForEach(Games.allCases, id: \.self) { game in
            VStack {
               Image(game.rawValue.lowercased())
                  .resizable()
                  .renderingMode(.template)
                  .scaledToFit()
                  .padding(.bottom, 2)
//               Text(game.rawValue)
//                  .bold()
//                  .font(.footnote)
            }
            .foregroundColor(game.rawValue == gamesViewModel.endpoint ? Color("blue") : Color.black)
            .onTapGesture {
               gamesViewModel.endpoint = game.rawValue
            }
         }
      }
   }
}
