//
//  SubViewMatch.swift
//  HelloCard
//
//  Created by Hieu.Nguyen on 05/02/2021.
//

import SwiftUI

struct SubViewMatch: View {
    var body: some View {
        VStack{
            ZStack{
                Image(systemName: "camera")
                    .font(.system(size: 100))
                    .foregroundColor(.purple)
                    .rotationEffect(.degrees(20))
                    .offset(x: 50, y: -100)
                Image(systemName: "music.note.list")
                    .font(.system(size: 100))
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .saturation(5)
                    .rotationEffect(.degrees(-20))
                    .offset(x: -80, y: 0)
                Image(systemName: "photo")
                    .font(.system(size: 100))
                    .foregroundColor(.green)
                    .saturation(1)
                    .rotationEffect(.degrees(-20))
                    .offset(x: 80, y: 40)
                
            }
            Spacer()
                .frame(height:100)
            Text("Check back later")
                .fontWeight(.bold)
                .font(.system(size: 30))
            Spacer()
                .frame(height:20)
            Text("Your matches' activity will appear here")
                .frame(width:200)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
            Spacer()
                .frame(height:100)
        }
    }
}

struct SubViewMatch_Previews: PreviewProvider {
    static var previews: some View {
        SubViewMatch()
    }
}
