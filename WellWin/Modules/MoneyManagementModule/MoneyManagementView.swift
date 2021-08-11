//
//  MoneyManagementView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

struct MoneyManagement: View {
   
   @State private var moneyManagementType: Int = 0
   
   let columns = [
      GridItem(.fixed(UIScreen.main.bounds.size.width / 2 - 20), spacing: 16),
      GridItem(.fixed(UIScreen.main.bounds.size.width / 2 - 20), spacing: 16)
   ]
   
   @State var percentage: String = .init()
   @State var isSelected: Int = 0
   
   private let betValue: Array<Int> = [
      50,
      100,
      150,
      200,
      250,
      300,
      350,
      400,
      450,
      500,
      750,
      1000,
      1500,
      2000,
      2500,
      3000,
      3500,
      4000,
      4500,
      5000
   ]
   
   var body: some View {
      VStack {
         HStack {
            Text("Betting models")
               .bold()
               .font(.headline)
            Spacer()
         }
         .padding()
         Picker("", selection: $moneyManagementType) {
            Text("Flat betting model")
               .foregroundColor(.blue)
               .tag(0)
            Text("Percentage model")
               .tag(1)
         }
         .background(Color.gray.opacity(0.1))
         .pickerStyle(SegmentedPickerStyle())
         .padding(.horizontal)
         
         if moneyManagementType == 0 {
            LazyVGrid(columns: columns) {
               ForEach(0..<betValue.count, id: \.self) { index in
                  Text("\(betValue[index])")
                     .frame(maxWidth: .infinity)
                     .padding(.vertical, 10)
                     .padding(.horizontal, 10)
                     .background(isSelected == index ? Color("blue") : Color.white)
                     .foregroundColor(isSelected == index ? Color.white : Color.black)
                     .cornerRadius(7.0)
                     .shadow(color: .gray, radius: 2, x: 1, y: 1)
                     .onTapGesture {
                        isSelected = index
                     }
               }
            }
            .padding()
         } else {
            TextField("% of my balance", text: $percentage)
               .textFieldStyle(RoundedBorderTextFieldStyle())
               .padding()
         }
         Spacer()
      }
   }
}

struct MoneyManagementView_Previews: PreviewProvider {
   static var previews: some View {
      MoneyManagement()
   }
}
