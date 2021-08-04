//
//  TeamsView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

struct TeamsView: View, NavigationTitle {
   
   let title: String = "Teams"
   
    var body: some View {
      VStack {
        Text("Teams")
         Spacer()
      }
    }
}

struct TeamsView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsView()
    }
}
