//
//  ContentView.swift
//  CombingViews
//
//  Created by Jessica Perez on 11/19/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ///leading when u want it to the left
        VStack(alignment: .leading) {
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
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
