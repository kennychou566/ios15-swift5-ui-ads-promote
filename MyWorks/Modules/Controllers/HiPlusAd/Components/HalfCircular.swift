//
//  HalfCircular.swift
//  MyWorks
//
//  Created by Kenny on 2022/5/8.
//

import SwiftUI

struct HalfCircular: View {
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
                    .trim(from: 0.5, to: 1)
                    .stroke(self.staticColor ?? Color.init(hex: "#f2305f"), lineWidth: self.lineWidth ?? 65)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                Circle()
                    .trim(from: 0.0, to: self.circleProgress/2)
                    .stroke(self.progressColor, lineWidth: self.lineWidth ?? 65)
                    .frame(width: geometry.size.width, height: geometry.size.width)
                    .rotationEffect(Angle(degrees: 180))

            }
        }
            .frame(width: widthAndHeight, height: widthAndHeight)
    }
}

struct HalfCircular_Previews: PreviewProvider {
    static var previews: some View {
        HalfCircular(circleProgress: .constant(0.2), widthAndHeight: 200, labelSize: 30, progressColor: .blue)
    }
}

