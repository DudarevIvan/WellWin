//
//  MoneyManagementViewModel.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import Foundation

final class MoneyManagementViewModel: ObservableObject {
   
   let model: SharedModel = .shared
   
   @Published var bankroll: Int = 1000
   
}
