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
         HStack {
            Text("Seasons")
               .bold()
               .font(.title3)
            Spacer()
         }
         .padding()
         .padding(.top, 10)
         .foregroundColor(.black)
         
         ForEach(seasons) { season in
            HStack {
               Text(season.season ?? "")
               Spacer()
               Image(systemName: "circle")
            }
         }
         .padding(5)
         .foregroundColor(.black)
         Spacer()
      }
      .frame(maxWidth: .infinity)
      .frame(height: 400)
      .background(
         ZStack(alignment: .bottom) {
            RoundedRectangle(cornerRadius: 20.0)
            Rectangle()
               .frame(height: 400 / 2)
         }
      )
      .foregroundColor(.white)
   }
}

struct SeasonsContentView_Previews: PreviewProvider {
   static var previews: some View {
      //SeasonsContentView()
      CLSScreen()
   }
}
