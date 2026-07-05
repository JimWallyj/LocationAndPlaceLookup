//
//  Place.swift
//  LocationAndPlaceLookup
//
//  Created by JIM WALEJKO on 7/2/26.
//

import Foundation
import MapKit
import Contacts

struct Place: Identifiable {
    let id = UUID().uuidString
    private var mapItem: MKMapItem
    
    init(mapItem: MKMapItem) {
        self.mapItem = mapItem
    }
    
    var name: String{
        self.mapItem.name ?? ""
    }
    
    var latitiude: CLLocationDegrees{
        self.mapItem.placemark.coordinate.latitude
        //self.mapItem.location.coordinate.latitude
    }
    
    var longitiude: Double{
        self.mapItem.placemark.coordinate.longitude
        //self.mapItem.location.coordinate.longitude
    }
    
    var address: String{
        //  Make sure you import Contacts to use "CN" structures
        let postalAddress = mapItem.placemark.postalAddress ?? CNPostalAddress()
        
        //  Get String that is a multiline formatted postal address
        var address = CNPostalAddressFormatter().string(from: postalAddress)
        //  Remove line feeds from multiline String above
        address = address.replacingOccurrences(of: "\n", with: ", ")
        
        return address
    }
}
