//
//  SeasonsContentView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 8/1/21.
//

import SwiftUI

struct SeasonsContentView: View {
   
   @Binding var seasons: Array<Seasons>
   
   @State var seasonID: Int?
   
   @State var edges: UIEdgeInsets? = UIApplication.shared.windows.first?.safeAreaInsets
   
   private let screenWidth = UIScreen.main.bounds.size.width
   private let screenHeight = UIScreen.main.bounds.size.height
   
   var body: some View {
      VStack {
         
         ZStack {
            Capsule()
               .frame(width: 50, height: 5)
         }
         .frame(height: 20)
         .frame(maxWidth: .infinity)
         .foregroundColor(.black.opacity(0.2))
         
         HStack {
            Text("Seasons")
               .font(.title2)
               .fontWeight(.bold)
            Spacer()
         }
         .padding(.horizontal)
         
         //Divider()
         
         ScrollView(.vertical, showsIndicators: false) {
            ForEach(seasons) { season in
               SeasonsCheckBoxView(chosenSeason: $seasonID, season: season)
                  .padding(.vertical, 7)
            }
            .padding(.horizontal)
         }
         // Apply button
         Button(action: {
            
         }, label: {
            Text("Apply")
               .bold()
         })
         .foregroundColor(.white)
         .padding(.horizontal, screenWidth * 0.41)
         .padding(.vertical, 10)
         .background(seasonID == nil ? Color.gray : Color.blue)
         .cornerRadius(6)
         .padding(.bottom, 14)
         .padding(.horizontal, 10)
         .disabled(seasonID == nil ? true : false)
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
