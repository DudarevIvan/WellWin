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
                              CountryView(country: country.name!)
                                 .onTapGesture {
                                    self.showSeasons.toggle()
                                 }.sheet(isPresented: $showSeasons, onDismiss: {
                                    print(self.showSeasons)
                                 }) {
                                    SeasonsScreen()
                                 }
                           Divider()
                        }
                        .background(Color.white)
                     }
                  }
               }
               .padding(.top)
               .overlay(NavigationLink(isActive: router.isStrategy, destination: StrategyScreen(pathArchive: "")) { Text("") }
               )
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
