//
//  StrategyViewsDescription.swift
//  WellWin
//
//  Created by Ivan Dudarev on 8/3/21.
//

import SwiftUI

struct ContainerViews {
   
   let archiveViewModel: ArchiveViewModel = .shared
   
   enum Conteiner: String, CaseIterable {
      case ht
      case at
      case referee
      case htGoalsCount1half, atGoalsCount1half, htGoalsCount2half, atGoalsCount2half, htGoalsCountFt, atGoalsCountFt
      
      func matching() -> AnyView {
         switch self {
            case .at, .ht:
               return AnyView(TeamsReview())
            case .referee:
               return AnyView(RefereesReview())
            case .htGoalsCount1half, .atGoalsCount1half,
                 .htGoalsCount2half, .atGoalsCount2half,
                 .htGoalsCountFt, .atGoalsCountFt:
               return AnyView(GoalsReview())
         }
      }
   }
   
   
   
   func getViews() {
      let archive: Archive = archiveViewModel.archive
      for (label, value) in Mirror(reflecting: archive).children {
         if Mirror(reflecting: value).children.count != 0 {
            print(label!)
         }
      }
   }
}


protocol StrategyViewsDescription {
   var id: Int { get }
   var title: String { get }
   var description: String { get }
   var isChange: Bool { get set }
}


struct MoneyManagementReview: View, StrategyViewsDescription {
   
   let id: Int = 3
   let title: String = "Money Management"
   let description: String = "fhasfaka agklhghaskaa"
   
   @State var isChange: Bool = false
   @State var activeLink: Bool = false
   
   var body: some View {
      VStack(alignment: .leading) {
         Divider()
         HStack {
            Text(title)
               .font(.headline)
            Spacer()
            Circle()
               .fill(isChange ? Color.green : Color.gray.opacity(0.4))
               .frame(width: 8)
         }
         Text(description)
            .font(.footnote)
         Divider()
         Text("\(isChange.description)")
      }
      .frame(maxWidth: .infinity)
      .frame(height: 50)
      .contentShape(Rectangle())
      .onTapGesture {
         activeLink = true
      }
      NavigationLinkCustom(isActive: activeLink, destination: MoneyManagementView(isChange: $isChange)) { Text("") }
   }
}


struct TeamsReview: View, StrategyViewsDescription {
   
   let id: Int = 4
   let title: String = "Teams"
   let description: String = "fhasfaka agklhghaskaa"
   
   @State var isChange: Bool = false
   @State var activeLink: Bool = false
   
   var body: some View {
      VStack(alignment: .leading) {
         Divider()
         HStack {
            Text(title)
               .font(.headline)
            Spacer()
            Circle()
               .fill(isChange ? Color.green : Color.gray.opacity(0.4))
               .frame(width: 8)
         }
         Text(description)
            .font(.footnote)
         Divider()
      }
      .frame(maxWidth: .infinity)
      .frame(height: 50)
      .contentShape(Rectangle())
      .onTapGesture {
         activeLink = true
      }
      NavigationLinkCustom(isActive: activeLink, destination: TeamsView()) { Text("") }
   }
}


struct RefereesReview: View, StrategyViewsDescription {
   
   let id: Int = 5
   let title: String = "Referees"
   let description: String = "fhasfaka agklhghaskaa"
   
   @State var isChange: Bool = false
   @State var activeLink: Bool = false
   
   var body: some View {
      VStack(alignment: .leading) {
         Divider()
         HStack {
            Text(title)
               .font(.headline)
            Spacer()
            Circle()
               .fill(isChange ? Color.green : Color.gray.opacity(0.4))
               .frame(width: 8)
         }
         Text(description)
            .font(.footnote)
         Divider()
      }
      .frame(maxWidth: .infinity)
      .frame(height: 50)
      .contentShape(Rectangle())
      .onTapGesture {
         activeLink = true
      }
      NavigationLinkCustom(isActive: activeLink, destination: TeamsView()) { Text("") }
   }
}


struct GoalsReview: View, StrategyViewsDescription {
   
   let id: Int = 6
   let title: String = "Goals"
   let description: String = "fhasfaka agklhghaskaa"
   
   @State var isChange: Bool = false
   @State var activeLink: Bool = false
   
   var body: some View {
      VStack(alignment: .leading) {
         Divider()
         HStack {
            Text(title)
               .font(.headline)
            Spacer()
            Circle()
               .fill(isChange ? Color.green : Color.gray.opacity(0.4))
               .frame(width: 8)
         }
         Text(description)
            .font(.footnote)
         Divider()
      }
      .frame(maxWidth: .infinity)
      .frame(height: 50)
      .contentShape(Rectangle())
      .onTapGesture {
         activeLink = true
      }
      NavigationLinkCustom(isActive: activeLink, destination: TeamsView()) { Text("") }
   }
}
