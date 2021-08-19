//
//  SeasonsContentView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 8/1/21.
//

import SwiftUI

struct SeasonsContentView: View {
   
   @Binding var seasons: Array<Seasons>
   @Binding var isShowing: Bool
   @Binding var go: Bool
   
   var archiveViewModel: ArchiveViewModel = ArchiveViewModel.shared
   
   @State var seasonID: Int?
   
   @State var edges: UIEdgeInsets? = UIApplication.shared.windows.first?.safeAreaInsets
   
   private let screenWidth = UIScreen.main.bounds.size.width
   private let screenHeight = UIScreen.main.bounds.size.height
   
   var body: some View {
      VStack {         
         HStack {
            Text("Seasons")
               .font(.title2)
               .fontWeight(.bold)
            Spacer()
            Button(action: {
               isShowing = false
            }, label: {
               Image(systemName: "multiply")
                  .resizable()
                  .scaledToFit()
                  .frame(width: 16)
                  .offset(x: -2, y: 2)
                  .foregroundColor(Color("gray"))
            })
         }
         .padding(.horizontal)
         .padding(.trailing, 2)
         .padding(.top)
                  
         ScrollView(.vertical, showsIndicators: false) {
            ForEach(seasons) { season in
               SeasonsCheckBoxView(chosenSeason: $seasonID, season: season)
                  .padding(.vertical, 4)
            }
            .padding(.horizontal)
         }
         
         // Apply button
         Button(action: {
            archiveViewModel.pathArchive = self.seasons[seasonID!].archive!
            go = true
            isShowing = false
         }, label: {
            Text("Apply")
               .bold()
               .frame(width: screenWidth * 0.94, height: 40)
         })
         .foregroundColor(.white)
         .background(seasonID == nil ? Color.gray.opacity(0.5) : Color.black.opacity(0.7))
         .cornerRadius(6)
         .shadow(radius: seasonID == nil ? 0 : 8)
         .padding(.horizontal, 10)
         .padding(.vertical, 10)
         .padding(.bottom, 20)
         .disabled(seasonID == nil ? true : false)
         
         Spacer()
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
      MainView()
   }
}
