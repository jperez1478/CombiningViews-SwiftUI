//
//  CircleImage.swift
//  CombingViews
//
//  Created by Jessica Perez on 11/19/21.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("CumberlandRiver")
        .resizable()
        .scaledToFit()
        .clipShape(Circle())
        .frame(width: 180)
        .overlay(Circle().stroke(Color.white,lineWidth: 4))
        .shadow(radius: 2)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
