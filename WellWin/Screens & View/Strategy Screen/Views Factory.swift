//
//  StrategyViewsDescription.swift
//  WellWin
//
//  Created by Ivan Dudarev on 8/3/21.
//

import SwiftUI

class ViewsFactory: ObservableObject {
   
   private lazy var archiveMirror = Mirror(reflecting: ArchiveViewModel.shared.archive)
   
   @Published var views: Array<AnyView> = .init()
   
   func getViews() {
      let descriptions: Array<ViewsDescription> = description()
      var buffer: Array<AnyView> = .init()
      for (label, value) in archiveMirror.children {
         if Mirror(reflecting: value).children.count != 0 {
            for description in descriptions {
               if description.id == label! {
                  let view = SomeView(description: description)
                  buffer.append(AnyView(view))
               }
            }
         }
      }
      self.views = buffer
   }
   
   func description() -> [ViewsDescription] {
      let url = Bundle.main.url(forResource: "Description Views", withExtension: "json")!
      let data = try! Data(contentsOf: url)
      let decoder = JSONDecoder()
      let description = try? decoder.decode([ViewsDescription].self, from: data)
      return description!
   }
   
   
}


struct ViewsDescription: Codable, Identifiable, Hashable {
   var id: String
   var title: String
   var description: String
   var fields: String
   var view: String
}


enum Factory: String, CaseIterable {
   
   case MoneyManagementView
   case TeamsView
   case RefereesView
   case GoalsView
   
   func matchingViews() -> AnyView {
      switch self {
         case .MoneyManagementView:
            return AnyView(MoneyManagement())
         case .TeamsView:
            return AnyView(Teams())
         case .RefereesView:
            return AnyView(Referees())
         case .GoalsView:
            return AnyView(Goals())
         // TODO: Add more views
      }
   }
}


// Base view (description view)
struct SomeView: View {
   
   let description: ViewsDescription
   
   @State var isChange: Bool = false
   @State var activeLink: Bool = false
   
   var body: some View {
      VStack(alignment: .leading) {
         HStack(alignment: .firstTextBaseline) {
            Text(description.title)
               .font(.headline)
               .foregroundColor(.white).opacity(0.8)
            Text(description.fields)
               .font(.footnote)
               .padding(.horizontal, 4)
               .padding(.vertical, 1)
               .foregroundColor(.black.opacity(0.7))
               .background(Color.white)
               .clipShape(RoundedRectangle(cornerRadius: 10))
            if description.title == "Money Management" {
               Spacer()
               ZStack {
                  RoundedRectangle(cornerRadius: 10)
                     .strokeBorder()
                     .frame(width: 80, height: 20)
                  Text("required")
                     .font(.footnote)
               }
               .foregroundColor(.yellow).opacity(0.5)
            } else {
               Spacer()
            }
         }
         Text(description.description)
            .foregroundColor(.gray)
            .font(.footnote)
            .lineLimit(nil)
            .fixedSize(horizontal: false, vertical: true)
         
         NavigationLinkCustom(isActive: activeLink, destination: Factory.init(rawValue: description.view)!.matchingViews()) { Text("") }
         
         Rectangle()
            .fill()
            .foregroundColor(.gray).opacity(0.3)
            .frame(height: 1)
            .frame(maxWidth: .infinity)
      }
      .frame(maxWidth: .infinity)
      .contentShape(Rectangle())
      .onTapGesture {
         activeLink = true
      }
   }
}
