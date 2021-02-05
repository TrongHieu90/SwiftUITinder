//
//  SubViewPick.swift
//  HelloCard
//
//  Created by Hieu.Nguyen on 05/02/2021.
//

import SwiftUI

struct SubViewPick: View {
    
    let data = ["p1", "p2", "p3", "p4", "p5"]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .opacity(0.7)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ScrollView{
                LazyVGrid(columns: columns, spacing: 7){
                    ForEach(data, id: \.self){
                        item in
                        ZStack{
                            Image(item)
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 185, height: 280)
                                .clipShape(RoundedRectangle(cornerRadius: 25))
                            Rectangle()
                                .foregroundColor(.gray)
                                .opacity(0.7)
                                .clipShape(RoundedRectangle(cornerRadius: 25))
                        }
                    }
                }.frame(width: 380)
            }
            ZStack{
                RoundedRectangle(cornerRadius: 100)
                    .frame(width: 300, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.yellow)
                    .contrast(0.6)
                    .shadow(radius: 7)
                Text("UNLOCK TOP PICKS")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
            }.offset(x: 0, y: 300)
        }
        
        
    }
}

struct SubViewPick_Previews: PreviewProvider {
    static var previews: some View {
        SubViewPick()
    }
}
