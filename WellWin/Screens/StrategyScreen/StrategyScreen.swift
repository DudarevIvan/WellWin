//
//  StrategyScreen.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

struct StrategyScreen: View {
    var body: some View {
      VStack {
         MoneyManagementView()
         TeamsView()
         RefereesView()
         GoalsView()
      }
    }
}

struct StrategyScreen_Previews: PreviewProvider {
    static var previews: some View {
        StrategyScreen()
    }
}
