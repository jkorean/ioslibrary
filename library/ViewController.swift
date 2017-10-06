//
//  ViewController.swift
//  library
//
//  Created by Jim Ko on 2017-10-06.
//  Copyright © 2017 Jim Ko. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapview: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bcit = CLLocationCoordinate2DMake(49.248499, -123.001375)
        mapview.setRegion(MKCoordinateRegionMakeWithDistance(bcit, 1500, 1500), animated: true)
        
        let metrotown = CLLocationCoordinate2DMake(49.226150, -122.999113)
        mapview.setRegion(MKCoordinateRegionMakeWithDistance(metrotown, 1500, 1500), animated: true)
        
        let ubc = CLLocationCoordinate2DMake(49.260605, -123.245994)
        mapview.setRegion(MKCoordinateRegionMakeWithDistance(ubc, 1500, 1500), animated: true)
        
        let nwms = CLLocationCoordinate2DMake(49.201406, -122.912573)
        mapview.setRegion(MKCoordinateRegionMakeWithDistance(nwms, 1500, 1500), animated: true)
        
        let bcplace = CLLocationCoordinate2DMake(49.276750, -123.111999)
        mapview.setRegion(MKCoordinateRegionMakeWithDistance(bcplace, 1500, 1500), animated: true)
        
        let pin1 = PinAnnotation(title: "BCIT", subtitle: "CST Program", coordinate: bcit)
        let pin2 = PinAnnotation(title: "Metrotown", subtitle: "Uniqlo Opens Today", coordinate: metrotown)
        let pin3 = PinAnnotation(title: "UBC", subtitle: "No CST Program", coordinate: ubc)
        let pin4 = PinAnnotation(title: "New Westminster Station", subtitle: "Skytrain Station", coordinate: nwms)
        let pin5 = PinAnnotation(title: "BC Place", subtitle: "Big Stadium", coordinate: bcplace)
        
        mapview.addAnnotation(pin1)
        mapview.addAnnotation(pin2)
        mapview.addAnnotation(pin3)
        mapview.addAnnotation(pin4)
        mapview.addAnnotation(pin5)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

