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
      NavigationView {
         ZStack {
            Color("black")
               .ignoresSafeArea()
            VStack {
               if let countries = gamesViewModel.games.countries {
                  ScrollView(.vertical, showsIndicators: false) {
                     ForEach(countries) { country in
                        NavigationLink(
                           destination: ResultScreen(),
                           label: {
                              Text(country.name!)
                              //CountryView(country: country.name!)
                           })
                     }
                  }
               }
               Spacer()
            }
         }
         //.navigationBarHidden(true)
         //.foregroundColor(Color("black"))
      }
   }
}

struct MainScreen_Previews: PreviewProvider {
   static var previews: some View {
      MainScreen()
   }
}
