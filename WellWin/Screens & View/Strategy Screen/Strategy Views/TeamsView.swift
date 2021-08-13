//
//  TeamsView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

struct Teams: View {
   
   @State var isSelected: Array<Bool> = Array(repeating: false, count: ArchiveViewModel.shared.archive.at!.count)
   
   private let screenWidth = UIScreen.main.bounds.size.width
   
   @State var teams: Int = 0
   @State var teamsType: TeamsType = .Home
      
   let archive: FootballArchiveModel = ArchiveViewModel.shared.archive
   
   let columns = [
      //GridItem(.flexible()),
      GridItem(.fixed(UIScreen.main.bounds.size.width / 2 - 20), spacing: 16),
      GridItem(.fixed(UIScreen.main.bounds.size.width / 2 - 20), spacing: 16)
   ]
   
   var body: some View {
      ZStack {
         Color.gray.opacity(0.1)
         VStack {
            // Title
            HStack {
               Text("Teams")
                  .bold()
                  .font(.title3)
                  .foregroundColor(.white)
               Spacer()
            }
            .padding(.horizontal)
            .padding(.top)
            
            Divider()
            HStack {
               Text("HT/AT")
                  .font(.footnote)
                  .foregroundColor(.white)
               Spacer()
            }
            .padding(.horizontal)
            Picker("", selection: $teamsType) {
               Text("Home team")
                  .foregroundColor(.blue)
                  .tag(TeamsType.Home)
               Text("Away team")
                  .tag(TeamsType.Away)
            }
            .background(Color.gray.opacity(0.1))
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal)
            Divider()
            
            Picker("", selection: $teams) {
               Text("Home team")
                  .foregroundColor(.blue)
                  .tag(0)
               Text("Away team")
                  .tag(1)
            }
            .background(Color.gray.opacity(0.1))
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal)
            
            //Exclude teams from bets
            //Select teams for bets
            ScrollView {
               LazyVGrid(columns: columns) {
                  ForEach(0..<(teams == 0 ? archive.ht!.count : archive.at!.count)) { index in
                     Text((teams == 0 ? archive.ht : archive.at)![index])
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


enum TeamsType {
   case Home
   case Away
}
