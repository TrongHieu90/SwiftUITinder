//
//  SubViewMessage.swift
//  HelloCard
//
//  Created by Hieu.Nguyen on 05/02/2021.
//

import SwiftUI

struct SubViewMessage: View {
    var body: some View {
        VStack{
            ZStack{
                Image(systemName: "rectangle.portrait.fill")
                    .font(.system(size: 170))
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                    .offset(x: 0, y: 75)
                
                Image(systemName: "rectangle.portrait.fill")
                    .font(.system(size: 220))
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                    .offset(x: 0, y: 37)
                
                Image(systemName: "rectangle.portrait.fill")
                    .font(.system(size: 260))
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                
                Image(systemName: "rectangle.portrait.fill")
                    .font(.system(size: 220))
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                    .offset(x: 39, y: -20)
                    .rotationEffect(.degrees(10))
                ZStack{
                    Image(systemName: "rectangle.inset.fill")
                        .font(.system(size: 60))
                        .foregroundColor(.green)
                        .saturation(2.5)
                        .offset(x: 50, y: -10)
                        .rotationEffect(.degrees(-12))
                    Text("LIKE")
                        .foregroundColor(.blue)
                        .font(.system(size: 20))
                        .offset(x: 50, y: -10)
                        .rotationEffect(.degrees(-12))
                        
                }
                
            }
            Spacer()
                .frame(height:100)
            Text("Get Swiping")
                .fontWeight(.bold)
                .font(.system(size: 35))
            Spacer()
                .frame(height: 30)
            Text("When you match with other users they will appear here, where you can send them a message")
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
    }
}

struct SubViewMessage_Previews: PreviewProvider {
    static var previews: some View {
        SubViewMessage()
    }
}
