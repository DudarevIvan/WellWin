//
//  CountryView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/18/21.
//

import SwiftUI

struct CountryView: View {
   
   private let country: String
   private let league: String
   
   init(country: String, league: String) {
      self.country = country
      self.league = league
   }
   
   var body: some View {
      HStack {
         VStack(alignment: .leading) {
            Text(country)
               .font(.headline)
               .foregroundColor(.white)
            Text(league)
               .font(.footnote)
               .foregroundColor(.gray)
         }
         Spacer()
         
         Image(country)
            .resizable()
            .scaledToFit()
            .frame(width: 34)
            .clipShape(RoundedRectangle(cornerRadius: 4))
            .shadow(radius: 1)
            .padding(4)
      }
      .contentShape(Rectangle())
      .padding(4)
      .padding(.horizontal)
   }
}

struct CountryView_Previews: PreviewProvider {
   static var previews: some View {
      CountryView(country: "England", league: "Liga One")
   }
}
