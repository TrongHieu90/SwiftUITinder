//
//  CreateAccount.swift
//  HelloCard
//
//  Created by Hieu.Nguyen on 02/02/2021.
//

import SwiftUI

struct CreateAccount: View {
    
    
    @State private var AccountCreated = false
    
    var body: some View {
        NavigationView{
            VStack{
                Text("My number is")
                    .font(.system(size: 45))
                Spacer()
                    .frame(height:50)
                HStack{
                    VStack{
                        Text("IN + 91")
                        
                        Rectangle().frame(width: 80, height: 2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    Rectangle().frame(width: 200, height: 2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .offset(x: 0, y: 16)
                    
                }
                Spacer()
                    .frame(height: 50)
                Text("We will send a text with verification code. Message and Data rates may apply. Learn what happens when your number changes.")
                    .multilineTextAlignment(.leading)
                    .frame(width:300)
                    .font(.system(size: 15.5))
                    .foregroundColor(.secondary)
                
                Spacer()
                    .frame(height: 50)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 300, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                    
                    Button("CONTINUE"){
                        self.AccountCreated.toggle()
                    }
                        .foregroundColor(.white)
                        .font(.system(size: 26))
                }
                .alert(isPresented: $AccountCreated){
                    Alert(title: Text("Account Created"), message: Text("Your account has been created"), dismissButton: .default(Text("OK")))
                }
            }
        }
        
    }
}

struct CreateAccount_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccount()
    }
}
