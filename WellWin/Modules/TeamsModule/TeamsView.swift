//
//  TeamsView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

struct TeamsView: View {
    var body: some View {
        Text("Teams")
         .navigationTitle("Teams")
         .navigationBarItems(leading: Text("Back"))
         .navigationBarItems(trailing: Text("Clear"))
    }
}

struct TeamsView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsView()
    }
}
