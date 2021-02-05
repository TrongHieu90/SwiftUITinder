//
//  TabView.swift
//  HelloCard
//
//  Created by Hieu.Nguyen on 03/02/2021.
//

import SwiftUI

struct TabView: View {
    
    @State private var isNavigationBarHidden: Bool = true;
    @State private var selectedTab = Tabs.FirstTab
    
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                Image(systemName: "flame.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(selectedTab == .FirstTab ? Color.red: Color.secondary)
                    .onTapGesture {
                        self.selectedTab = .FirstTab
                    }
                Spacer()
                Image(systemName: "star.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(selectedTab == .SecondTab ? Color.red: Color.secondary)
                    .onTapGesture {
                        self.selectedTab = .SecondTab
                    }
                Spacer()
                Image(systemName: "message.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(selectedTab == .ThirdTab ? Color.red: Color.secondary)
                    .onTapGesture {
                        self.selectedTab = .ThirdTab
                    }
                Spacer()
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(selectedTab == .FourthTab ? Color.red: Color.secondary)
                    .onTapGesture {
                        self.selectedTab = .FourthTab
                    }
                Spacer()
            }
            Spacer()
            switch selectedTab {
            case .FirstTab:
                Match()
            case .SecondTab:
                Likes()
            case .ThirdTab:
                Messages()
            case .FourthTab:
                ProfileView()
            }
            Spacer()
        }
        .navigationBarTitle("Hidden title")
        .navigationBarHidden(self.isNavigationBarHidden)
        .onAppear{
            self.isNavigationBarHidden = true
        }
    }
}

enum Tabs{
    case FirstTab
    case SecondTab
    case ThirdTab
    case FourthTab
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
