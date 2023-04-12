//
//  CircularProgressBar.swift
//  MyWorks
//
//  Created by Kenny on 2022/5/5.
//

import SwiftUI

struct CircularProgressBar: View {
    @Binding var circleProgress: CGFloat
        
        var widthAndHeight: CGFloat
        var labelSize: CGFloat?
        var staticColor: Color?
        var progressColor: Color
        var showLabel: Bool?
        var lineWidth: CGFloat?
        
        var body: some View {
            GeometryReader { geometry in
                ZStack {
                    Circle()
                        .stroke(self.staticColor ?? Color.init(hex: "#e5e5e5"), lineWidth: self.lineWidth ?? 15)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                    Circle()
                        .trim(from: 0.0, to: self.circleProgress)
                        .stroke(self.progressColor, lineWidth: self.lineWidth ?? 15)
                        .frame(width: geometry.size.width, height: geometry.size.width)
                        .rotationEffect(Angle(degrees: -90))
                    if self.showLabel ?? true {
                        Text("\(Int(self.circleProgress*100))%")
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .font(.custom("HelveticaNeue", size: self.labelSize ?? 20.0))
                    }
                }
            }
                .frame(width: widthAndHeight, height: widthAndHeight)
        }
}

struct CircularProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressBar(circleProgress: .constant(0.2), widthAndHeight: 200, labelSize: 30, progressColor: .blue)
    }
}
