//
//  circle.swift
//  Math Game
//
//  Created by Tanvir Rahman on 21.04.2022.
//

import SwiftUI

struct line2: View {
    var degreesRotate: Double
    var body: some View {
        Rectangle()
            .frame(width: 100, height: 5, alignment: .center)
            .rotationEffect(Angle(degrees: degreesRotate), anchor: .center)
            .padding(10)
    }
}
struct line: View{
    var rotate:Double
    
    var body: some View{
       
            Rectangle()
            .frame(width: 100, height: 5, alignment: .center)
                .rotationEffect(Angle(degrees: rotate), anchor: .center)
                .padding(10)
        
    }
}


struct circle: View{
    var body: some View{
        ZStack{
            Circle()
                .strokeBorder(lineWidth: 5, antialiased: true)
                .frame(height: 200)
            line(rotate:120)
            line2(degreesRotate: 60)
        }
    }
}


struct circle_Previews: PreviewProvider {
    static var previews: some View {
        circle()
    }
}
