//
//  TeamsView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

struct TeamsView: View {
   
   @State var isSelected: Array<Bool> = Array(repeating: false, count: ArchiveViewModel.shared.archive.at!.count)
   
   private let screenWidth = UIScreen.main.bounds.size.width
      
   let archive: Archive = ArchiveViewModel.shared.archive
   
   let columns = [
      //GridItem(.flexible()),
      GridItem(.fixed(UIScreen.main.bounds.size.width / 2 - 20), spacing: 16),
      GridItem(.fixed(UIScreen.main.bounds.size.width / 2 - 20), spacing: 16)
   ]
   
   var body: some View {
      ZStack {
         Color.gray.opacity(0.1)
         VStack {
            HStack {
               Text("Teams")
                  .bold()
                  .font(.title3)
               Spacer()
            }
            .padding(.horizontal)
            //Exclude teams from bets
            //Select teams for bets
            ScrollView {
               LazyVGrid(columns: columns) {
                  ForEach(0..<archive.at!.count) { index in
                     Text(archive.at![index])
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 10)
                        .background(isSelected[index] ? Color("blue") : Color.white)
                        .foregroundColor(isSelected[index] ? Color.white : Color.black)
                        .cornerRadius(7.0)
                        .shadow(color: .gray, radius: 2, x: 1, y: 1)
                        .onTapGesture {
                           isSelected[index].toggle()
                        }
                  }
               }
               .padding()
            }
         }
      }
   }
}

struct TeamsView_Previews: PreviewProvider {
   static var previews: some View {
      TeamsView()
   }
}
