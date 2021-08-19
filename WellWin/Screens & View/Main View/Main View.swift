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
            .edgesIgnoringSafeArea(.all)
         VStack {
//            // Select games
//            ZStack {
//               Color.gray.opacity(0.2)
//               VStack {
//                  HStack {
//                     ChooseGame()
//                        .environmentObject(gamesViewModel)
//                        .frame(maxWidth: .infinity)
//                        .frame(height: 60)
//                  }
//                  .padding(.horizontal)
//                  //Divider()
//               }
//               .offset(y: 20)
//            }
//            .frame(height: 30)
            // Is load?
            if let countries = gamesViewModel.games.countries {
               ScrollView(.vertical, showsIndicators: false) {
                  // Countries
                  ForEach(countries) { country in
                     if let leagues = countries[country.id!].leagues {
                        // Leagues
                        ForEach(leagues) { league in
                           VStack{
                              CountryView(country: country.name!, league: league)
                                 .onTapGesture {
                                    self.seasons = league.seasons!
                                    self.showSeasons = true
                                 }
                              Rectangle()
                                 .fill()
                                 .foregroundColor(.gray.opacity(0.3))
                                 .frame(maxWidth: .infinity)
                                 .frame(height: 1)
                           }
                           .padding(.horizontal)
                        }
                     }
                  }
               }
               .padding(.top)
            }
            Spacer()
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


// Chose game(football, hockey, tennis, volleyball or basketball)
struct ChooseGame: View {
   
   @EnvironmentObject var gamesViewModel: GamesViewModel
   
   var body: some View {
      HStack {
         ForEach(Games.allCases, id: \.self) { game in
            VStack {
               Image(game.rawValue.lowercased())
                  .resizable()
                  .renderingMode(.template)
                  .scaledToFit()
               Text(game.rawValue)
                  .font(.footnote)
            }
            .padding(8)
            .foregroundColor(game.rawValue == gamesViewModel.endpoint ? Color("green2") : Color.white)
            .onTapGesture {
               gamesViewModel.endpoint = game.rawValue
            }
            Spacer()
         }
      }
   }
}
