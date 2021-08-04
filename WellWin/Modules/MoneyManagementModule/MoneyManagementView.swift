//
//  MoneyManagementView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

struct MoneyManagementView: View, NavigationTitle {
   
   let title: String = "Money Managemen"
   @Binding var isChange: Bool
   
    var body: some View {
      VStack {
         Text(isChange.description)
         Spacer()
         Button(action: {
            self.isChange = true
         }, label: {
            Text("Change strategy")
         })
         Spacer()
      }
    }
}

struct MoneyManagementView_Previews: PreviewProvider {
    static var previews: some View {
      MoneyManagementView(isChange: .constant(true))
    }
}
