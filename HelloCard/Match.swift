//
//  Match.swift
//  HelloCard
//
//  Created by Hieu.Nguyen on 03/02/2021.
//

import SwiftUI

struct Match: View {
    var body: some View {
        Home()
    }
}

struct Match_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct Profile : Identifiable{
    var id: Int
    var name: String
    var image: String
    var age: Int
    var offset: CGFloat
    var distance: String
}

struct Home: View{
    @State var profiles = [
        Profile(id: 0, name: "Annie Watson", image: "p1", age: 27, offset: 0, distance: "8 kilometer away"),
        Profile(id: 1, name: "Catherine", image: "p2", age: 19, offset: 0, distance: "10 kilometer away"),
        Profile(id: 2, name: "Suzan", image: "p3", age: 25, offset: 0, distance: "1 kilometer away"),
        Profile(id: 3, name: "Juliana", image: "p4", age: 20, offset: 0, distance: "35 kilometer away"),
        Profile(id: 4, name: "Clair", image: "p5", age: 19, offset: 0, distance: "7 kilometer away")
    ]
    
    var body : some View{
        VStack{
            Spacer()
            GeometryReader{ g in
                ZStack{
                    ForEach(profiles.reversed()){
                        profile in
                        ProfilecardView(profile: profile, frame: g.frame(in: .global))
                    }
                }
            }
            .frame(width: 350, height: 550)
            .padding([.horizontal, .bottom])
            Spacer()
            HStack(spacing: 35){
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                Image(systemName: "gobackward")
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(.yellow)
                    .background(Color.white)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Image(systemName: "xmark.circle.fill")
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(.red)
                    .background(Color.white)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Image(systemName: "star.fill")
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(.blue)
                    .background(Color.white)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Image(systemName: "heart.fill")
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(.green)
                    .background(Color.white)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Image(systemName: "bolt.fill")
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(.purple)
                    .background(Color.white)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Spacer()
                
            }
        }
    }
}

struct ProfilecardView : View{
    
    @State var profile : Profile
    var frame: CGRect
    
    
    var body : some View{
        VStack{
            ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
                Image(profile.image)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: frame.width, height: frame.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                ZStack(alignment: Alignment(horizontal: .center, vertical: .top), content: {
                    (profile.offset > 0 ? Color.green : Color.red)
                        .opacity(profile.offset != 0 ? 0.7 : 0)
                    HStack{
                        if(profile.offset < 0){
                            Spacer()
                        }
                        Text(profile.offset == 0 ? "" : (profile.offset > 0 ? "Likes" : "Nopes"))
                            .font(.title)
                            .foregroundColor(.white)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.top, 25)
                            .padding(.horizontal)
                        
                        if profile.offset > 0{
                            Spacer()
                        }
                    }
                })
                
                VStack(spacing: 20){
                    VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 12, content: {
                        HStack{
                            Text(profile.name)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .font(.system(size: 30))
                            Text(String(profile.age))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .font(.system(size: 25))
                        }.foregroundColor(.white)
                        
                        HStack{
                            Image(systemName: "mappin.and.ellipse")
                                .foregroundColor(.red)
                                .font(.system(size: 20))
                            Text(profile.distance)
                                .foregroundColor(.white)
                        }
                    }).offset(x: -50, y: 0)
                }.padding(.all)
            }).cornerRadius(20)
            .offset(x: profile.offset)
            .rotationEffect(.init(degrees: profile.offset == 0 ? 0 : (profile.offset>0 ? 12 : -12)))
            .gesture(DragGesture()
                        .onChanged(
                            {(value) in withAnimation(.default){
                                profile.offset = value.translation.width
                            }
                                
                            })
                        .onEnded({
                            (value) in withAnimation(.easeIn){
                                if(profile.offset > 150){
                                    profile.offset = 500
                                }
                                else if
                                    profile.offset < -150{
                                    profile.offset = -500
                                }
                                else{
                                    profile.offset = 0
                                }
                            }
                        }))
        }
    }
    
}
