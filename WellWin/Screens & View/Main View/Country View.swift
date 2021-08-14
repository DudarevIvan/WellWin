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
            Text(country)
               .font(.headline)
            HStack {
               Text(league.name!)
                  .font(.footnote)
                  .foregroundColor(.gray)
               
               Text("\(league.numberOfGames!)")
                  .font(.footnote)
                  .foregroundColor(.red)
               Spacer()
            }
         }
         Spacer()
         Image(country)
            .resizable()
            .scaledToFit()
            .frame(width: 36)
            .clipShape(Circle())
            //.clipShape(RoundedRectangle(cornerRadius: 4))
            .shadow(radius: 1)
            //.padding(2)
      }
      .foregroundColor(.black.opacity(0.8))
      .contentShape(Rectangle())
      .padding(4)
      .padding(.horizontal, 6)
      .background(Color.white)
   }
}
