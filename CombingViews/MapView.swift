//
//  MapView.swift
//  CombingViews
//
//  Created by Jessica Perez on 11/19/21.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: 36.16500,  longitude: -86.78373)
        
        let span       = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region     = MKCoordinateRegion(center: coordinate, span: span)
                        uiView.setRegion(region, animated: true)
    }
}
//


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
