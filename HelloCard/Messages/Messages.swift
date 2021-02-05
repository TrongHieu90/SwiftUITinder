//
//  Messages.swift
//  HelloCard
//
//  Created by Hieu.Nguyen on 03/02/2021.
//

import SwiftUI

struct Messages: View {
    
    @State private var selectedTab = section.messages
    
    var body: some View {
       
        VStack{
        
            HStack{
                Spacer()
                Text("Messages")
                    .foregroundColor(selectedTab == .messages ? Color.red: Color.secondary)
                    .onTapGesture {
                        self.selectedTab = .messages
                        }
                Spacer()
                Text("Match")
                    .foregroundColor(selectedTab == .match ? Color.red: Color.secondary)
                    .onTapGesture {
                        self.selectedTab = .match
                        }
                Spacer()
                }
                Spacer()
            switch selectedTab {
            case .messages:
                SubViewMessage()
            case .match:
                SubViewMatch()
            }
        }        
    }
}

enum section{
    case messages
    case match
}

struct Messages_Previews: PreviewProvider {
    static var previews: some View {
        Messages()
    }
}
