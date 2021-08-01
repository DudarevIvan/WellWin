//
//  SeasonsContentView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 8/1/21.
//

import SwiftUI

struct SeasonsContentView: View {
   
   @Binding var seasons: Array<Seasons>
   
   var body: some View {
      VStack {
         
         ZStack {
            Capsule()
               .frame(width: 40, height: 6)
         }
         .frame(height: 40)
         .frame(maxWidth: .infinity)
         .background(Color.white.opacity(0.00001))
         
         HStack {
            Text("Seasons")
               .bold()
               .font(.title3)
            Spacer()
         }
         .padding(.horizontal)
         
         ScrollView(.vertical, showsIndicators: false) {
            ForEach(seasons) { season in
               HStack {
                  Text(season.season ?? "")
                     .font(.subheadline)
                  Spacer()
                  Image(systemName: "circle")
               }
            }
            .padding(.horizontal)
            .padding(.top, 14)
            Spacer()
         }
      }
      .frame(maxWidth: .infinity)
      .frame(height: 360)
      .background(
         ZStack(alignment: .bottom) {
            RoundedRectangle(cornerRadius: 20.0)
            Rectangle()
               .frame(height: 360 / 2)
         }
         .foregroundColor(.white)
      )
      .foregroundColor(.black)
   }
}

struct SeasonsContentView_Previews: PreviewProvider {
   static var previews: some View {
      //SeasonsContentView()
      CLSScreen()
   }
}
