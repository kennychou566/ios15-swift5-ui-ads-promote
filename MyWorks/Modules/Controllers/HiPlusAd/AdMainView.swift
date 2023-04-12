//
//  AdMainView.swift
//  MyWorks
//
//  Created by Kenny Chou on 2022/4/25.
//

import SwiftUI

struct AdMainView: View {
    
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    OrdSliderView()
                }
                .frame(height:136)
                //選影音上熱門
                PickupVideo()
                //嗨吧名稱
                HiBarInfo()
                //嗨+紀錄
                HiRecord()
                //訂單明細
                OrdList()
               
                Spacer()
            }
            .padding(.horizontal,10)
            //  .offset(y:-30)
        }
        .background(Color(hexString: "#f7f7f7"))
        .navigationTitle("嗨＋上熱門")
        .navigationBarTitleDisplayMode(.inline)
    }   
}


struct AdMainView_Previews: PreviewProvider {
    static var previews: some View {
        AdMainView()
         // OrdList()
    }
}

//訂單明細
struct OrdList: View {
    var body: some View {
        VStack{
            Divider()
                .frame(height: 5)
                .background(.black)
                .padding(.top,10)
           
            HStack{
                Text("訂單明細")
                Spacer()
            }
            .frame(maxWidth:.infinity)
            
            Divider()
                .frame(height: 1)
                .background(.black)
            
            OrdSample1()
            OrdSample2()
            OrdSample3()
            OrdSample4()
//            Divider()
//                .frame(height: 1)
//                .background(.black)
        }
    }
}
//嗨+紀錄
struct HiRecord: View {
    @State public var dateBtn: Int = 1
    var body: some View {
        VStack{
            HStack{
                Text("嗨+紀錄")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.vertical,10)
                Spacer()
            }
            .frame(maxWidth:.infinity)
            HStack{
                Text("最近成效")
                Spacer()
            }
            .frame(maxWidth:.infinity)
            HStack{
                Button(action: {dateBtn = 1}) {
                    Text("昨日成效")
                        .font(.headline)
                        .foregroundColor(Color(hexString: dateBtn==1 ? "#ffffff" : "#8e8e8e"))
                }
                .frame(maxWidth:.infinity, minHeight:32)
                .background(Color(hexString: dateBtn==1 ? "#f2305f":"#ffffff"))
                .border(Color(hexString: dateBtn==1 ? "#f2305f" : "#8e8e8e"), width: 1)
                .cornerRadius(25)
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                    .stroke(Color(hexString: dateBtn==1 ? "#f2305f" : "#8e8e8e"), lineWidth:2)
                    )
                
                Button(action: {dateBtn = 7}) {
                    Text("最近7日")
                        .font(.headline)
                        .foregroundColor(Color(hexString: dateBtn==7 ? "#ffffff" : "#8e8e8e"))
                }
                .frame(maxWidth:.infinity, minHeight:32)
                .background(Color(hexString: dateBtn==7 ? "#f2305f" : "#ffffff"))
                .border(Color(hexString: dateBtn==7 ? "#f2305f" : "#8e8e8e"), width: 1)
                .cornerRadius(25)
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                    .stroke(Color(hexString: dateBtn==7 ? "#ffffff" : "#8e8e8e"), lineWidth:2)
                    )
                Button(action: {dateBtn = 30}) {
                    Text("最近30日")
                        .font(.headline)
                        .foregroundColor(Color(hexString: dateBtn==30 ? "#ffffff" : "#8e8e8e"))
                }
                .frame(maxWidth:.infinity, minHeight:32)
                .background(Color(hexString: dateBtn==30 ? "#f2305f" : "#ffffff"))
                .border(Color(hexString: dateBtn==30 ? "#f2305f" : "#8e8e8e"), width: 1)
                .cornerRadius(25)
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                    .stroke(Color(hexString: dateBtn==30 ? "#ffffff" : "#8e8e8e"), lineWidth:2)
                    )
                
                Button(action: {dateBtn = 90}) {
                    Text("最近3月")
                        .font(.headline)
                        .foregroundColor(Color(hexString: dateBtn==90 ? "#ffffff" : "#8e8e8e"))
                }
                .frame(maxWidth:.infinity, minHeight:32)
                .background(Color(hexString: dateBtn==90 ? "#f2305f" : "#ffffff"))
                .border(Color(hexString: dateBtn==90 ? "#f2305f" : "#8e8e8e"), width: 1)
                .cornerRadius(25)
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                    .stroke(Color(hexString: dateBtn==90 ? "#ffffff" : "#8e8e8e"), lineWidth:2)
                    )
            }
            .frame(maxWidth:.infinity)
            HStack{
                VStack{
                    HStack{
                        Text("30")
                            .font(.title)
                            .foregroundColor(Color(hexString: "#f2305f"))
                    }
                    .frame(maxWidth:.infinity)
                    HStack{
                        Text("播放次數")
                            .font(.headline)
                    }
                    .frame(maxWidth:.infinity)
                }
                .frame(maxWidth:.infinity,minHeight: 80)
                .background(Color(hexString: "#fef4f7"))
                .cornerRadius(25)
                
                VStack{
                    HStack{
                        Text("200")
                            .font(.title)
                            .foregroundColor(Color(hexString: "#f2305f"))
                    }
                    .frame(maxWidth:.infinity)
                    HStack{
                        Text("按讚次數")
                            .font(.headline)
                    }
                    .frame(maxWidth:.infinity)
                }
                .frame(maxWidth:.infinity,minHeight: 80)
                .background(Color(hexString: "#fef4f7"))
                .cornerRadius(25)
                
                VStack{
                    HStack{
                        Text("80%")
                            .font(.title)
                            .foregroundColor(Color(hexString: "#f2305f"))
                    }
                    .frame(maxWidth:.infinity)
                    HStack{
                        Text("留言次數")
                            .font(.headline)
                    }
                    .frame(maxWidth:.infinity)
                }
                .frame(maxWidth:.infinity,minHeight: 80)
                .background(Color(hexString: "#fef4f7"))
                .cornerRadius(25)
            }
            .frame(maxWidth:.infinity)
        }
        .background(.white)
    }
}
//嗨吧名稱
struct HiBarInfo: View {
    var body: some View {
        VStack{
            HStack{
                HStack{
                    Image("rong")
                        .resizable()
                        .frame(width:90,height: 90)
                }
                VStack{
                    HStack{
                        Text("嗨吧名稱")
                            .fontWeight(.bold)
                        Text("嗨吧帳號：XXXXXXXX")
                            .foregroundColor(Color(hexString: "#8e8e8e"))
                    }
                    .frame(maxWidth:.infinity,minHeight:0,alignment: .leading)
                    .padding(.top,0)
                    
                    Text("666.000")
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .font(.title)
                        .foregroundColor(Color(hexString: "#f2305f"))
                        .padding(.top,-10)
                    
                    HStack{
                        HStack{
                            Text("嗨+券")
                                .foregroundColor(Color(hexString: "#8e8e8e"))
                        }
                        
                        HStack{
                            Image(systemName: "chevron.right")
                        }
                    }
                    .frame(maxWidth:.infinity,alignment: .leading)
                    
                }
                .frame(maxWidth:.infinity,maxHeight: 100)
            }
           
            HStack{
                VStack{
                    HStack{
                        Image(systemName: "doc.text.fill")
                            .resizable()
                            .frame(width:40,height: 40)
                            .foregroundColor(Color(hexString: "#f2305f"))
                        
                        
                    }
                    .frame(maxWidth:.infinity,alignment: .center)
                    HStack{
                        NavigationLink(destination: MidOrderListView()){
                            Text("訂單明細")
                                .font(.headline)
                                .foregroundColor(.black)
                        }

                    }
                    .frame(maxWidth:.infinity,alignment: .center)
                }
                VStack{
                    HStack{
                        Image(systemName: "chart.xyaxis.line")
                            .resizable()
                            .frame(width:40,height: 40)
                            .foregroundColor(Color(hexString: "#f2305f"))
                    }
                    .frame(maxWidth:.infinity,alignment: .center)
                    HStack{
                        NavigationLink(destination: MidReportMainView()){
                            Text("分析報告")
                                .font(.headline)
                                .foregroundColor(.black)
                        }

                    }
                    .frame(maxWidth:.infinity,alignment: .center)
                }
                VStack{
                    HStack{
                        Image(systemName: "questionmark.app.fill")
                            .resizable()
                            .frame(width:40,height: 40)
                            .foregroundColor(Color(hexString: "#f2305f"))
                        
                    }
                    .frame(maxWidth:.infinity,alignment: .center)
                    
                    HStack{
                        NavigationLink(destination: MidQAnswerView()){
                            Text("用戶Q&A")
                                .font(.headline)
                                .foregroundColor(.black)
                                
                        }

                    }
                    .frame(maxWidth:.infinity,alignment: .center)
                }
            }
            .frame(minHeight:120)
            .padding(.bottom,5)
        }
        .background(.white)
    }
}
//選影音上熱門
struct PickupVideo: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "flame")
                    .foregroundColor(Color(hexString: "#f2305f"))
                Text("選影音上熱門")
                    .font(.title3)
                    .fontWeight(.heavy)
                
                Spacer()
                NavigationLink(destination: MidVideoSelectView()){
                    Text("更多影音")
                        .foregroundColor(Color(hexString: "#8e8e8e"))
                    Image(systemName:"chevron.right")
                        .foregroundColor(Color(hexString: "#8e8e8e"))
                }

            }
            HStack{
                VideoRowView(vrow: menuItems[0])
            }
            .padding(.bottom,15)
        }
        .background(.white)
        
    }
}
