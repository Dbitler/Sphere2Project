//
//  ContentView.swift
//  Sphere2Project
//
//  Created by IIT PHYS 440 on 1/17/23.
//

import SwiftUI

struct ContentView: View {
    @State private var sphericalradius = ""
    @State private var sphereVolumestring = ""
    @State private var sphereSAreastring = ""
    @State private var BoxVolumestring = ""
    @State private var BoxSAreastring = ""

    var body: some View {
        //Horizontal and Vertical stack of user-presenting text and buttons, asking them to input a value.
        VStack {
            Text("Please Input Radius Value:")
            HStack {
                TextField("Enter value", text: $sphericalradius)
                    .padding()
                    .border(Color.black, width: 1)
                Text("Units")
            }
            // This button calls upon the calculate sphere instance, to calculate those specific parameters
            Button(action: {
                
                self.calculateSphere()
               
            }) {
                Text("Calculate Spherical Parameters (Units)")
            }
            // Same as the previous button, but for the Bounding Box parameters.
            Button(action: {
                
                self.calculateBoundingBox()
               
            }) {
                Text("Calculate Cubic Parameters (Units)")
            }
            
            // This chunk of code presents the outputs of the spherical and bounding box instances. 
            Text(sphereVolumestring)
                .padding()
            Text(sphereSAreastring)
                .padding()
            Text(BoxVolumestring)
                .padding()
            Text(BoxSAreastring)
                .padding()
        

        }
    }
    
    func calculateSphere(){
        
        // calls upon the Sphere parameters instance.
        
        
        let mysphereclassinstance = SphereParameters()
        mysphereclassinstance.sphericalradius = sphericalradius
        
        let areaSphere = mysphereclassinstance.calculatesphereSurfaceArea()
        let volumeSphere = mysphereclassinstance.calculatesphereVolume()
        
        //shows the output of the sphere parameters with additional units for modification (km, m, ft, etc)
        self.sphereVolumestring = "Spherical Surface Area: \(Double(areaSphere)) units^2"
        self.sphereSAreastring = "Spherical Volume: \(Double(volumeSphere)) units^3"
        
    }
    
    func calculateBoundingBox(){
        //calls upon the bounding box parameters instance, in exactly the same way as the Sphereparameters instance.
        let myboxclassinstance = BoundingBoxParameters()
        myboxclassinstance.boxradius = sphericalradius
        
        let areaBox = myboxclassinstance.calculateBoundingBoxSurfaceArea()
        let volumeBox = myboxclassinstance.calculateBoundingBoxVolume()
        
        self.BoxSAreastring = "Cubic Surface Area: \(Double(areaBox)) units^2"
        self.BoxVolumestring = "Cubic Volume: \(Double(volumeBox)) units^3"
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
