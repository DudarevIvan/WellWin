//
//  SeasonsCheckBoxView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 8/3/21.
//

import SwiftUI

struct SeasonsCheckBoxView: View {
   
   @Binding var chosenSeason: Int?
   let season: Seasons
   
   var body: some View {
      HStack {
         Text(season.season ?? "")
            .font(.subheadline)
         Spacer()
         if chosenSeason != season.id {
            Image(systemName: "circle")
               .font(.title3)
               .foregroundColor(.black)
         } else {
            Image(systemName: "record.circle")
               .font(.title3)
               .foregroundColor(.blue)
         }
      }
      .onTapGesture {
         if chosenSeason == season.id {
            chosenSeason = nil
         } else {
            chosenSeason = season.id
         }
      }
   }
}

struct SeasonsCheckBoxView_Previews: PreviewProvider {
   static var previews: some View {
      //SeasonsContentView()
      CLSScreen()
   }
}
