//
//  CountryView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/18/21.
//

import SwiftUI

struct CountryView: View {
   
   private let country: String
   private let league: Leagues
   
   init(country: String, league: Leagues) {
      self.country = country
      self.league = league
   }
   
   var body: some View {
      HStack {
         VStack(alignment: .leading) {
            HStack {
               Text(country)
                  .font(Font.system(size: 18, weight: .semibold, design: .rounded))
                  .foregroundColor(.white)
               
               Text("\(league.numberOfGames!)")
                  .font(Font.system(size: 13, weight: .bold, design: .rounded))
                  .foregroundColor(Color("green"))
               Spacer()
            }
            Text(league.name!)
               .font(Font.system(size: 18, weight: .semibold, design: .rounded))
         }
         Spacer()
         Image(country)
            .resizable()
            .scaledToFit()
            .frame(height: 26)
            .clipShape(RoundedRectangle(cornerRadius: 6))
      }
      .foregroundColor(.white.opacity(0.7))
      .contentShape(Rectangle())
      .padding(2)
      .padding(.horizontal, 6)
      .background(Color("gray"))
   }
}
