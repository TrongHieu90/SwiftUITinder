//
//  ProfileView.swift
//  HelloCard
//
//  Created by Hieu.Nguyen on 03/02/2021.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.secondary)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .opacity(0.1)
            Circle()
                .trim(from: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, to: 0.5)
                .frame(width:1200)
                .foregroundColor(.white)
                .shadow(radius: 20 )
                .offset(x: 0, y: -210)
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 400, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x: 0, y: -150)
            VStack{
                Image("profilebg")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 210, height: 210, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Text("Dustin , 19")
                    .font(.largeTitle)
                Text("Some University, Canada")
                    .font(.title2)
                    .frame(width: 250, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                HStack{
                    VStack{
                        ZStack{
                            Circle()
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .shadow(radius: 5 )
                            Image(systemName: "gearshape.fill")
                                .font(.system(size: 28))
                                .foregroundColor(.secondary)
                        }
                        Text("SETTINGS")
                            .foregroundColor(.gray)
                        
                    }
                    Spacer().frame(width: 30)
                    VStack{
                        ZStack{
                            Circle()
                                .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .shadow(radius: 7 )
                            Image(systemName: "camera.fill.badge.ellipsis")
                                .font(.system(size: 40))
                                .foregroundColor(.white)
                                .frame(width: 80, height: 80, alignment:/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.pink]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        }
                        Text("ADD MEDIA")
                            .foregroundColor(.gray)
                    }
                    Spacer().frame(width: 30)
                    VStack{
                        ZStack{
                            Circle()
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .shadow(radius: 5 )
                            Image(systemName: "pencil")
                                .font(.system(size: 28))
                                .foregroundColor(.secondary)
                        }
                        Text("EDIT INFO")
                            .foregroundColor(.gray)
                        
                    }
                    
                }
                Spacer().frame(height:60)
                VStack{
                    HStack{
                        Image("relogogold")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Text("Get Tinder Gold")
                            .font(.system(size: 28))
                            .offset(x: -5, y: 5)
                    }
                    Spacer().frame(height: 20)
                    Text("See who dislikes you & more")
                    
                    HStack{
                        Circle()
                            .frame(width: 8, height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.yellow)
                        Circle()
                            .frame(width: 8, height: 8, alignment: .center)
                            .foregroundColor(.secondary)
                        Circle()
                            .frame(width: 8, height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.secondary)
                        Circle()
                            .frame(width: 8, height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.secondary)
                        Circle()
                            .frame(width: 8, height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.secondary)
                        Circle()
                            .frame(width: 8, height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.secondary)
                        Circle()
                            .frame(width: 8, height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                        .frame(height:40)
                    ZStack{
                        RoundedRectangle(cornerRadius: 100)
                            .frame(width: 300, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .shadow(radius: 7)
                        Text("GET TINDER GOLD")
                            .font(.system(size: 20))
                            .foregroundColor(.yellow)
                    
                    }
                }
            }
            .offset(x: 0, y: 10)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
