//
//  SignInView .swift
//  HelloCard
//
//  Created by Hieu.Nguyen on 02/02/2021.
//

import SwiftUI

struct SignInView_: View {
    var body: some View {
        ZStack {
            Image("tinder background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
//                Spacer()
//                    .frame(height: 250)
                HStack{
                    Image("relogo")
                        .resizable()
                        .frame(width: 45, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Image("nottinder")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 190, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .offset(x:-5, y: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    
                }
                Spacer()
                    .frame(height: 50)
                Text("By Tapping create an account and sign in you agree to our terms. learn how we use your data in our privacy and cookies policy")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                Spacer()
                    .frame(height: 50)
                Image("wapple")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Image("wfb")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 60, alignment: .center)
                Image("wphone")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("Trouble Signing in?")
                    .font(.system(size: 20))
            }
            
        }
    }
}

struct SignInView__Previews: PreviewProvider {
    static var previews: some View {
        SignInView_()
    }
}
