//
//  CountryView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/18/21.
//

import SwiftUI

struct CountryView: View {
   
   private var country: String
   
   init(country: String) {
      self.country = country
   }
   
   var body: some View {
//      Button(action: {
//         
//      }, label: {
         HStack {
            Image(country)
               .resizable()
               .scaledToFit()
               .frame(width: 40)
               .clipShape(RoundedRectangle(cornerRadius: 6))
               .shadow(radius: 1)
               .padding(4)
            Text(country)
            Spacer()
            Image(systemName: "chevron.forward")
               .padding(.trailing, 4)
         }
         .padding(4)
         .foregroundColor(Color("green"))
         .background(Color.white)
         .clipShape(RoundedRectangle(cornerRadius: 6))
         //.shadow(color: .gray, radius: 6, x: 1, y: 2)
         .padding(.horizontal)
      //})
   }
}

struct CountryView_Previews: PreviewProvider {
   static var previews: some View {
      CountryView(country: "England")
   }
}
