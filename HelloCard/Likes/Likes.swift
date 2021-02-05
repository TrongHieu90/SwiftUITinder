//
//  Likes.swift
//  HelloCard
//
//  Created by Hieu.Nguyen on 03/02/2021.
//

import SwiftUI

struct Likes: View {
    @State private var selectedTab = part.zerolikes
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                
                Text("0 Likes")
                    .foregroundColor(selectedTab == .zerolikes ? Color.red : Color.secondary)
                    .onTapGesture {
                        self.selectedTab = .zerolikes
                    }
                Spacer()
                Text("Top picks")
                    .foregroundColor(selectedTab == .topPicks ? Color.red : Color.secondary)
                    .onTapGesture {
                        self.selectedTab = .topPicks
                    }
                Spacer()
            }
            Spacer()
            
            switch selectedTab {
            case .zerolikes:
                SubViewLike()
            case .topPicks:
                SubViewPick()
            }
            
        }
    }
    
}

enum part{
    case zerolikes
    case topPicks
}

struct Likes_Previews: PreviewProvider {
    static var previews: some View {
        Likes()
    }
}
