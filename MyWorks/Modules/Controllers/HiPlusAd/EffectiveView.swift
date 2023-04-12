//
//  EffectiveView.swift
//  MyWorks
//
//  Created by Kenny on 2022/4/16.
//

import SwiftUI

struct EffectiveView: View {
    var body: some View {
        ZStack{
            List{
                OrdProgressView(ordListParse: ordItems[0])
                OrderRowView(ordListParse: ordItems[0])
                EffectTitle()
                EffectCount()
                EffectTitleAnalysis()
                LikeAnalysis()
                GenderAnalysis()
                WatchTime()
                AgeScale()
                
            }
            .padding(.horizontal,-25)
            .offset(y:-30)

         }
        .navigationTitle("投放成效")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct EffectiveView_Previews: PreviewProvider {
    static var previews: some View {
        
        EffectiveView()
            .previewInterfaceOrientation(.portrait)
        WatchTime()
    }
}
struct AgeScale: View{
    var body: some View{
        VStack{
            HStack{
                Text("年齡圖表").font(.subheadline)
                Spacer()
            }
            .frame( height: 30, alignment: .top)
            .padding()
            VStack{
                ChartView2()
//                BarChartView(data: ChartData(values: [
//                    ("18-23", 3),
//                    ("24-30", 6),
//                    ("31-40", 4),
//                    ("41-50", 2),
//                    ("50上", 8)
//                    
//                ]),
//                title: "")
                Spacer()
               
            }
            .frame( height: 310, alignment: .top)
        }
    }
}
struct WatchTime: View{
    let stepData = LineChartData(
        keys: [],
        data: [
            DataItems(name: "0", values: [0]),
            DataItems(name: "6", values: [6]),
            DataItems(name: "12", values: [4]),
            DataItems(name: "18", values: [8]),
            DataItems(name: "24", values: [6])
        ])
    var body: some View{
        VStack{
            HStack{
                Text("觀看曲線").font(.subheadline)
                Spacer()
            }
            .frame( height: 30, alignment: .top)
            .padding()
            VStack{
                LineChartView(
                    title: "",
                    chartData: stepData)
//                CurveLine(data: [12, 18, 14, 16, 22, 19, 16])
               
            }
            .frame( height: 310, alignment: .top)
            
        }
    }
}
struct GenderAnalysis: View{
    var body: some View {
        VStack{
            HStack{
                Text("性別分析")
                    .font(.subheadline)
                Spacer()
            }
            .frame( height: 30,alignment: .top)
            .padding()
            HStack{
                VStack{
                    HStack{
                        Text("男性")
                            .font(.subheadline)
                    }
                    HStack{
                        Text("40%")
                            .font(.title2)
                            .foregroundColor(Color.init(hex: "#f2305f"))
                    }.padding(.top,0)
                }.padding(.leading,30)
                Spacer()
                VStack{
                    HStack{
                        Text("女性")
                            .font(.subheadline)
                    }
                    HStack{
                        Text("60%")
                            .font(.title2)
                            .foregroundColor(Color.init(hex: "#f2305f"))
                    }.padding(.top,0)
                }.padding(.trailing,30)
                
            }
            ZStack{
                HalfCircular(circleProgress: .constant(0.40), widthAndHeight: 180, labelSize: 20, progressColor: Color.init(hex: "#f897af")
                )
            }
            .frame( height: 120,alignment: .top)
        }
    }
}
struct LikeAnalysis: View {
    var body: some View {
        
        VStack{
            HStack{
                Text("內容分析")
                    .font(.subheadline)
                Spacer()
            }
            .frame( height: 60,alignment: .top)
            .padding()
            
            HStack{
                HStack{
                    Spacer()
                    ZStack{
                        VStack{
                            Spacer()
                            VStack{
                                Spacer()
                                Text("30%")
                                    .font(.headline)
                                    .foregroundColor(Color.init(hex: "#f2305f"))
                            }
                            Spacer()
                            VStack{
                                Spacer()
                                Text("平均完播率")
                                    .font(.subheadline)
                                Spacer()
                            }
                        }
                        
                    }
                    .frame(width: 160, height: 100)
                    .background(Color.init(hex: "#fef5f7"))
                    .cornerRadius(10)
                    .overlay(alignment: .top){
                        Image("play")
                            .offset(x: 0, y: -40)
                    }
                    Spacer()
                }
                HStack{
                    Spacer()
                    ZStack{
                        VStack{
                            Spacer()
                            VStack{
                                Spacer()
                                Text("30%")
                                    .font(.headline)
                                    .foregroundColor(Color.init(hex: "#f2305f"))
                            }
                            Spacer()
                            VStack{
                                Spacer()
                                Text("按讚率")
                                    .font(.subheadline)
                                Spacer()
                            }
                        }
                        
                    }
                    .frame(width: 160, height: 100)
                    .background(Color.init(hex: "#fef5f7"))
                    .cornerRadius(10)
                    .overlay(alignment: .top){
                        Image("good")
                            .offset(x: 0, y: -40)
                    }
                    Spacer()
                }
            }
        }
        
        
    }

    
    
}

struct EffectCount: View {
    var scrWidth = UIScreen.main.bounds.width-28
    var body: some View {
        HStack{
            VStack{
                Text("花費嗨幣")
                    .font(.subheadline)
                Text("$ 100")
                    .font(.title2)
                    .foregroundColor(Color.red)
            }
            VStack{
                Spacer()
                
            }.frame(width: 20, height: 80)
            VStack{
                Text("播放次數")
                    .font(.subheadline)
                HStack{
                    Text("1500")
                        .font(.title)
                        .foregroundColor(Color.red)
                    Text("/1900")
                        .font(.title2)
                        .foregroundColor(
                            Color(hexString: "#f897af")
                        )
                }
                
            }
            
            VStack{
                
                CircularProgressBar(circleProgress: .constant(0.78), widthAndHeight: 70, labelSize: 10, progressColor: Color(hexString: "#f2305f")
                )
              
                .frame(width: 120,height: 80,alignment: .trailing)
            }
            
        }
        
        VStack{
            HStack {

                VStack{
                    Text("666")
                        .foregroundColor(Color.init(hex: "#f4577d"))
                    Text("播放次數")
                }
                .frame(width: scrWidth/3, height: 60)
                
                VStack{
                    HStack{
                        HStack{}
                            .frame(width: 2,height: 50)
                            .border(Color.init(hex: "#f896ae"))
                        Spacer()
                        
                        VStack{
                            Text("666")
                            .foregroundColor(Color.init(hex: "#f4577d"))
                            Text("按讚次數")
                        }
                        Spacer()
                        HStack{}
                        .frame(width: 2,height: 50)
                        .border(Color.init(hex: "#f896ae"))

                    }
                    
                }
                .frame(width: scrWidth/3, height: 60)
               
                
                VStack{
                    Text("666")
                        .foregroundColor(Color.init(hex: "#f4577d"))
                    Text("留言次數")
                }
                .frame(width: scrWidth/3, height: 60)
                
            }
            .frame(width: scrWidth, height: 60)
            
            HStack {//第二層

                VStack{
                    Text("666")
                        .foregroundColor(Color.init(hex: "#f4577d"))
                    Text("分享次數")
                }
                .frame(width: scrWidth/3, height: 60)
                
                VStack{
                    HStack{
                        HStack{}
                            .frame(width: 2,height: 50)
                            .border(Color.init(hex: "#f896ae"))
                        Spacer()
                        
                        VStack{
                            Text("666")
                            .foregroundColor(Color.init(hex: "#f4577d"))
                            Text("主頁瀏覽數")
                        }
                        Spacer()
                        HStack{}
                        .frame(width: 2,height: 50)
                        .border(Color.init(hex: "#f896ae"))

                    }
                    
                }
                .frame(width: scrWidth/3, height: 60)
               
                
                VStack{
                    Text("666")
                        .foregroundColor(Color.init(hex: "#f4577d"))
                    Text("粉絲新增數")
                }
                .frame(width: scrWidth/3, height: 60)
                
            }
            .frame(width: scrWidth, height: 60)
        }
        .frame(width: scrWidth, height: 130)
        .background(Color.init(hex: "#fef5f7"))
        .cornerRadius(10)
        
        
        
    }
    
    
    
}
struct EffectTitleAnalysis: View {
    var body: some View {
        Text("內容分析")
            .font(.title3)
            .padding(.top,0)
    }
}
struct EffectTitle: View {
    var body: some View {
        Text("投放成效")
            .font(.title3)
            .padding(.top,0)
    }
}


