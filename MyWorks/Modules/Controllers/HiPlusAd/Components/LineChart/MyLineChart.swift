//
//  MyLineChart.swift
//  MyBarChart
//
//  Created by Kenny on 2022/5/10.
//
import Foundation
import SwiftUI

struct MyLineChart: View {
    let stepData = LineChartData(
        keys: ["Current Week", "Previous Week"],
        data: [
            DataItems(name: "Mon", values: [20, 22]),
            DataItems(name: "Tue", values: [21, 24]),
            DataItems(name: "Wed", values: [30, 28]),
            DataItems(name: "Thu", values: [25, 40]),
            DataItems(name: "Fri", values: [15, 21]),
            DataItems(name: "Sat", values: [22, 25]),
            DataItems(name: "Sun", values: [26, 21])
        ])
    
    
    var body: some View {
        ZStack {
            Color(red: 208/255, green: 225/255, blue: 242/255, opacity: 0.4)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Line Chart")
                
                LineChartView(
                    title: "the chart title",
                    chartData: stepData)
                .frame(width: 300, height: 300, alignment: .center)
                
                Spacer()
            }
        }
    }
}

struct MyLineChart_Previews: PreviewProvider {
    static var previews: some View {
        MyLineChart()
    }
}
struct LineShape: Shape {
    var yValues: [Double]
    var scaleFactor: Double
    
    func path(in rect: CGRect) -> Path {
        let xIncrement = (rect.width / (CGFloat(yValues.count)))
        var xValue = xIncrement * 0.5
        var path = Path()
        path.move(to: CGPoint(x: xValue,
                              y: (rect.height - (yValues[0] * scaleFactor))))
        for i in 1..<yValues.count {
            xValue += xIncrement
            let pt = CGPoint(x: xValue,
                             y: (rect.height - (yValues[i] * scaleFactor)))
            path.addLine(to: pt)
            
        }
        return path
    }
}
struct LineChartView: View {
    var title: String
    var chartData: LineChartData
    
    let isShowingKey = true
    
    var body: some View {
        let data = chartData.data
        GeometryReader { gr in
            let headHeight = gr.size.height * 0.10
            let maxValue = data.flatMap { $0.values }.max()!
            let axisWidth = gr.size.width * 0.15
            let axisHeight = gr.size.height * 0.1
            let keyHeight = gr.size.height * (isShowingKey ? 0.1 : 0.0)
            let fullChartHeight = gr.size.height - axisHeight - headHeight - keyHeight
            
            let tickMarks = AxisParameters.getTicks(top: Int(maxValue))
            let scaleFactor = (fullChartHeight * 0.95) / CGFloat(tickMarks[tickMarks.count-1])
            
            VStack {
                if title != "" {
                ChartHeaderView(title: title,height: axisHeight)
                    .frame(height: headHeight)
                }
                ZStack {
                    Rectangle()
                        .fill(Color.white)
                    
                    VStack(spacing:0) {
                        if isShowingKey {
                            KeyView(keys: chartData.keys)
                                .frame(height: keyHeight)
                        }
                        
                        HStack(spacing:0) {
                            YaxisView(ticks: tickMarks, scaleFactor: Double(scaleFactor))
                                .frame(width:axisWidth, height: fullChartHeight)
                            ChartAreaViews(data: data, scaleFactor: Double(scaleFactor))
                                .frame(height: fullChartHeight)
                        }
                        
                        HStack(spacing:0) {
                            Rectangle()
                                .fill(Color.clear)
                                .frame(width:axisWidth, height:axisHeight)
                            XaxisView(data: data)
                                .frame(height:axisHeight)
                        }
                    }
                }
            }
        }
    }
}
struct ChartHeaderViews: View {
    var title: String
    var height: CGFloat
    
    var body: some View {
        
        Text(title)
            .frame(height: height)
    }
}
struct ChartAreaViews: View {
    var data: [DataItems]
    var scaleFactor: Double
    let colors = [Color(hexString: "#f2305f"),Color.gray,Color.green,Color.blue]
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5.0)
                .fill(Color.white)
            
            ForEach(data[0].values.indices,id: \.self) { i in
                let list = data.map { $0.values[i] }
                LineShape(yValues: list, scaleFactor: scaleFactor)
                    .stroke(colors[i], lineWidth: 2.0)
                
            }
        }
    }
}

struct DataItems: Identifiable {
    let name: String
    let values: [Double]
    let id = UUID()
}

struct LineChartData {
    let keys: [String]
    let data: [DataItems]
}
struct YaxisView: View {
    var ticks: [Int]
    var scaleFactor: Double
    
    var body: some View {
        GeometryReader { gr in
            let fullChartHeight = gr.size.height
            ZStack {
                // y-axis line
                Rectangle()
                    .fill(Color.black)
                    .frame(width:1.5)
                    .offset(x: (gr.size.width/2.0)-1, y: 1)
                
                // Tick marks
                ForEach(ticks, id:\.self) { t in
                    HStack {
                        Spacer()
                        Text("\(t)")
                            .font(.footnote)
                        Rectangle()
                            .frame(width: 10, height: 1)
                    }
                    .offset(y: (fullChartHeight/2.0) - (CGFloat(t) * CGFloat(scaleFactor)))
                }
            }
        }
    }
}
struct XaxisView: View {
    var data: [DataItems]
    
    var body: some View {
        GeometryReader { gr in
            let labelWidth = (gr.size.width * 0.9) / CGFloat(data.count)
            let padWidth = (gr.size.width * 0.05) / CGFloat(data.count)
            let labelHeight = gr.size.height
            let tickHeight = gr.size.height * 0.12
            ZStack {
                Rectangle()
                    .fill(Color.white)
                
                Rectangle()
                    .fill(Color.black)
                    .frame(height: 1.5)
                    .offset(x: 0, y: -(gr.size.height/2.0))
                
                HStack(spacing:0) {
                    ForEach(data) { item in
                        ZStack {
                            VStack {
                                Rectangle()
                                    .frame(width: 1, height: tickHeight)
                                Spacer()
                            }
                            Text(item.name)
                                .font(.footnote)
                            .frame(width:labelWidth, height: labelHeight)
                        }
                    }
                    .padding(.horizontal, padWidth)
                }
            }
        }
    }
}
struct KeyView: View {
    let keys: [String]
    let colors = [Color(hexString: "#f2305f"),Color.gray,Color.green,Color.blue]
    var body: some View {
        HStack {
            ForEach(self.keys.indices,id: \.self) { i in
                HStack(spacing:0) {
                    Image(systemName: "square.fill")
                        .foregroundColor(colors[i])
                    Text("\(keys[i])")
                }
                .font(.footnote)
            }
        }
    }
}
struct AxisParameters {
    static func getTicks(top:Int) -> [Int] {
        var step = 0
        var high = top
        switch(top) {
        case 0...8:
            step = 1
        case 9...17:
            step = 2
        case 18...50:
            step = 5
        case 51...170:
            step = 10
        case 171...500:
            step = 50
        case 501...1700:
            step = 200
        case 1701...5000:
            step = 500
        case 5001...17000:
            step = 1000
        case 17001...50000:
            step = 5000
        case 50001...170000:
            step = 10000
        case 170001...1000000:
            step = 50000
        default:
            step = 10000
        }
        high = ((top/step) * step) + step + step
        var ticks:[Int] = []
        for i in stride(from: 0, to: high, by: step) {
            ticks.append(i)
        }
        return ticks
    }
}
