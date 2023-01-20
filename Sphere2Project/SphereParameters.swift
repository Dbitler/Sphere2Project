//
//  SphereParameters.swift
//  Sphere2Project
//
//  Created by IIT PHYS 440 on 1/17/23.
//

import SwiftUI

class SphereParameters: NSObject {
    
   var sphericalradius = ""
    
    /* The equation of the surface area of the sphere is just
                    2
     A = 4 * pi * r^
     
     */
    func calculatesphereSurfaceArea() -> Double {
        let Sphericalradius = Double(sphericalradius)!
        return 4 * Double.pi * pow(Sphericalradius,2)
    }
    
    /* The equation of the volume of the sphere:
                     3
     A = (4/3)pi * r^
     
     */
    func calculatesphereVolume() -> Double{
        let Sphericalradius = Double(sphericalradius)!
        return 4.0/3.0 * Double.pi * pow(Sphericalradius,3)
    }
}
