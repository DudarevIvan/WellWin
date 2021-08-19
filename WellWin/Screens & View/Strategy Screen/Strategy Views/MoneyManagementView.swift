//
//  MoneyManagementView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

struct MoneyManagement: View {
   
   @ObservedObject var viewModel: MoneyManagementViewModel = .init()
   
   @State private var moneyManagementType: Int = 0
   
   let columns = [
      GridItem(.fixed(UIScreen.main.bounds.size.width / 2 - 20), spacing: 16),
      GridItem(.fixed(UIScreen.main.bounds.size.width / 2 - 20), spacing: 16)
   ]
   
   @State var percentage: String = .init()
   @State var bettingModels: Int = 0
   
   // Bankroll
   let bankrollStep = 100
   let bankrollRange = 1000...500000
   
   var body: some View {
      ZStack {
         Color("gray")
            .ignoresSafeArea()
         VStack {
            // Bankroll
            HStack {
               Text("Bankroll")
                  .font(.headline)
                  .foregroundColor(.white).opacity(0.8)
               Spacer()
            }
            .foregroundColor(.white)
            .padding(.horizontal)
            Stepper(value: $viewModel.bankroll,
                    in: bankrollRange,
                    step: bankrollStep) {
               Text("\(viewModel.bankroll)")
                  .font(.headline)
            }
            .padding(3)
            .background(Color("lightGray"))
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .padding(.horizontal)
            Rectangle()
               .frame(maxWidth: .infinity)
               .frame(height: 1)
               .foregroundColor(.gray).opacity(0.3)
               .padding(.horizontal)
            
            // Beting models
            HStack {
               Text("Betting models")
                  .font(.headline)
                  .foregroundColor(.white).opacity(0.8)
               Spacer()
            }
            .foregroundColor(.white)
            .padding(.horizontal)
            .padding(.top)
            
            Picker(selection: $bettingModels, label: Text("")) {
               Text("Flat")
                  .tag(0)
               Text("Percentage")
                  .tag(1)
               Text("Kelly crit.")
                  .tag(2)
               Text("Custom")
                  .tag(3)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal)
            
            switch bettingModels {
               case 0:
                  Flat()
                     .padding()
               case 1:
                  Text("")
               case 2:
                  Text("")
               case 3:
                  Text("")
               default:
                  Text("")
            }
            Spacer()
         }
      }
   }
}

struct MoneyManagementView_Previews: PreviewProvider {
   static var previews: some View {
      MoneyManagement()
   }
}


struct Flat: View {
   
   @State private var value = 0
   let step = 100
   let range = 100...50000
   
   var body: some View {
      VStack {
         HStack {
            Text("Bet")
               .font(.headline)
            Spacer()
         }
         Stepper(value: $value,
                 in: range,
                 step: step) {
            Text("\(value)")
               .font(.headline)
         }
         .padding(3)
         .background(Color("lightGray"))
         .clipShape(RoundedRectangle(cornerRadius: 8))
      }
   }
}
