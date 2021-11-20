//
//  ContentView.swift
//  CombingViews
//
//  Created by Jessica Perez on 11/19/21.
//

import SwiftUI

struct ContentView: View {
    let avatars = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        ///combining views so embeded the lower vstack in another vstack (line: 12)
        VStack {
            MapView()
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
             VStack(alignment: .leading) { ///leading when u want it to the left
                Text("Cumberland River")
                    .font(.title)
                HStack {
                    Text("Downtown Civil War")
                        .font(.subheadline)
                    ///space between text
                    Spacer()
                    Text("Nashville")
                        .font(.subheadline)
                }
                 ZStack {
                     Capsule()
                         .frame(height: 80)
                         .foregroundColor(Color(.secondarySystemBackground))
                     HStack(spacing:50) {
                         Button {
                             
                         } label: {
                             LocationActionButton(color: .red, imageName: "location.fill")
                         
                         }
                         Button {
                             
                         } label: {
                             LocationActionButton(color: .red, imageName: "play")
                         }
                         Button {
                             
                         } label: {
                             LocationActionButton(color: .red, imageName: "stop")
                     
                         }
                     }
                 }
                
            } //: vsatck
            .padding(.horizontal)
            
            Text("Important People In this Event ")
                .bold()
                .font(.title2)
           
            LazyVGrid(columns: avatars, content: {
                AvatarView(imageName: "person",size: 64)
                AvatarView(imageName: "person",size: 64)
                AvatarView(imageName: "person",size: 64)
                AvatarView(imageName: "person",size: 64)
            })
            
            Spacer()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

///LocationActionButton
///this is to not repeeat when creating more button function in my HStack subview

struct LocationActionButton: View {
    var color: Color
    var imageName: String
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 60, height: 60)
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .frame(width: 22, height: 22)
        }
    }
}

struct AvatarView: View {
    var imageName:String
    var size: CGFloat
    
    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
           /// .clipShape(Circle())
    }
}
