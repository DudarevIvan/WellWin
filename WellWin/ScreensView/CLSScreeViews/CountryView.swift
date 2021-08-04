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
         Image(country)
            .resizable()
            .scaledToFit()
            .frame(width: 34)
            .clipShape(RoundedRectangle(cornerRadius: 4))
            .shadow(radius: 1)
            .padding(4)
         VStack(alignment: .leading) {
            Text(country)
               .font(.headline)
            Text(league)
               .font(.footnote)
               .foregroundColor(.gray)
         }
         Spacer()
         Image(systemName: "chevron.forward")
            .padding(.trailing, 4)
      }
      .padding(4)
      .foregroundColor(.primary)
      .background(Color.white)
      .clipShape(RoundedRectangle(cornerRadius: 6))
      .padding(.horizontal)
   }
}

struct CountryView_Previews: PreviewProvider {
   static var previews: some View {
      CountryView(country: "England", league: "Liga One")
   }
}
