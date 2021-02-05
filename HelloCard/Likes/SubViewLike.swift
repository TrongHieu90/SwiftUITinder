//
//  SubViewLike.swift
//  HelloCard
//
//  Created by Hieu.Nguyen on 05/02/2021.
//

import SwiftUI

struct SubViewLike: View {
    var body: some View {
        VStack{
            Image(systemName: "bolt.heart.fill")
                .font(.system(size: 120))
                .foregroundColor(.secondary)
            Spacer().frame(height:70)
            Text("Upgrade to gold to see people who already liked you!")
                .frame(width: 200)
                .lineLimit(3)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
            Spacer().frame(height: 70)
            
            ZStack{
                RoundedRectangle(cornerRadius: 100)
                    .frame(width: 300, height: 60)
                    .foregroundColor(.yellow)
                    .contrast(0.6)
                    .shadow(radius: 7)
                Text("SEE WHO LIKES YOU")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                
            }
            
        }
    }
}

struct SubViewLike_Previews: PreviewProvider {
    static var previews: some View {
        SubViewLike()
    }
}
