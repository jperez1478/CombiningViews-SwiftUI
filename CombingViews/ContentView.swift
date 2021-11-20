//
//  ContentView.swift
//  CombingViews
//
//  Created by Jessica Perez on 11/19/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ///combining views so embeded the lower vstack in another vstack (line: 12)
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
             VStack(alignment: .leading) { ///leading when u want it to the left
                Text("Cumberland River")
                    .font(.title)
                HStack {
                    Text("Dowton Civil War")
                        .font(.subheadline)
                    ///space between text
                    Spacer()
                    Text("Nashville")
                        .font(.subheadline)
                }
                
            } //: vsatck
            .padding()
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
