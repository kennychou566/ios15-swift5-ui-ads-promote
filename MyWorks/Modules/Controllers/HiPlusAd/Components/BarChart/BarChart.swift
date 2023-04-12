//
//  BarChart.swift
//  MyWorks
//
//  Created by Lee Yan Pu on 2022/5/10.
//

import SwiftUI

struct BarChart: View {
    var body: some View {
        ChartView2()
    }
}

struct BarChart_Previews: PreviewProvider {
    static var previews: some View {
        BarChart()
    }
}
struct DataItem: Identifiable {
    let name: String
    let value: Double
    let id = UUID()
}

struct ChartView2: View {
    let chartData: [DataItem] = [
        DataItem(name: "18-23", value: 3),
        DataItem(name: "24-30", value: 6),
        DataItem(name: "31-40", value: 4),
        DataItem(name: "41-50", value: 2),
        DataItem(name: "50上", value: 8)
    ]

    var body: some View {
        VStack {
//            Text("Sample Bar Chart")
//                .font(.title)

            BarChartView2(
                title: "", data: chartData)
//                .frame(width: 350, height: 310, alignment: .center)

            Spacer()
        }
    }
}
struct ChartHeaderView: View {
    var title: String
    var height: CGFloat
    var body: some View {
        Text(title)
            .frame(height: height)
    }
}


struct BarChartView2: View {
    var title: String
    var data: [DataItem]
    var body: some View {
        GeometryReader { gr in
            let headHeight = gr.size.height * 0.10
            VStack {
                if(title != ""){
                ChartHeaderView(title: title, height: headHeight)
                }
                ChartAreaView(data: data)

            }
        }
    }
}

struct ChartAreaView: View {
    var data: [DataItem]
    var body: some View {
        GeometryReader { gr in
            let fullBarHeight = gr.size.height * 0.80
            let maxValue = data.map { $0.value }.max()!

            ZStack {
                RoundedRectangle(cornerRadius: 5.0)
                    .fill(Color.white)

                VStack {
                    HStack(spacing:0) {
                        ForEach(data) { item in
                            BarView4(
                                name: item.name,
                                value: item.value,
                                maxValue: maxValue,
                                fullBarHeight: Double(fullBarHeight))
                        }
                    }
                    .padding(4)
                }

            }
        }
    }
}
struct BarView4: View {
    var name: String
    var value: Double
    var maxValue: Double
    var fullBarHeight: Double

    var body: some View {
        GeometryReader { gr in
            let barHeight = (Double(fullBarHeight) / maxValue) * value
            let textWidth = gr.size.width * 0.80
            VStack {
                Spacer()
                RoundedRectangle(cornerRadius:5.0)
                    .fill(Color(hexString: "#f2305f"))
                    .frame(height: CGFloat(barHeight), alignment: .trailing)
//                    .overlay(
//                        Text("\(value, specifier: "%.0F")")
//                            .font(.footnote)
//                            .foregroundColor(.white)
//                            .fontWeight(.bold)
//                            .frame(width: textWidth)
//                            .offset(y:10)
//                        ,
//                        alignment: .top
//                    )

                Text(name)
                    .font(.system(size: 11))
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .frame(width: textWidth)
            }
            .padding(.horizontal, 4)
        }
    }
}
