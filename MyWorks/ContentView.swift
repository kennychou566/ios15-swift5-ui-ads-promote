//
//  ContentView.swift
//  MyWorks
//
//  Created by Kenny on 2022/4/26.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            VStack{
                Text("熱門影音投放")
                    .font(.custom("PlayfairDisplay-Bold", size: 24))
                NavigationLink(destination: AdMainView()){
                    Text("嗨＋上熱門主頁")
                        .foregroundColor(Color.red)
                }
                
                NavigationLink(destination: VideoSelectView()){
                    Text("選影音上熱門")
                        .foregroundColor(Color.red)
                }
                
                NavigationLink(destination: AdCheckOutView()){
                    Text("嗨＋投放、結帳")
                        .foregroundColor(Color.red)
                        
                }
                
                NavigationLink(destination: OrderListView()){
                    Text("訂單列表")
                        .foregroundColor(Color.red)
                        
                }
                
                NavigationLink(destination: EffectiveView()){
                    Text("投放成效")
                        .foregroundColor(Color.red)
                        
                }
                OrderStatusMenuView()
                ReportMenuView()
                OtherMenuView()
            }



                
           
           
        }
        
        

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
struct OrderStatusMenuView: View{
    var body: some View{
        VStack{
            HStack{
                Text("訂單狀態").font(.title3)
                Spacer()
            }
            .frame( height: 30, alignment: .center)
            .padding()
            VStack{
                NavigationLink(destination: OrdCompleteView()){
                    Text("完成訂單")
                        .foregroundColor(Color.red)
                        
                }
                NavigationLink(destination: OrdConfirmView()){
                    Text("訂單審核中")
                        .foregroundColor(Color.red)
                        
                }
                NavigationLink(destination: OrdRejectView()){
                    Text("訂單審核不通過")
                        .foregroundColor(Color.red)
                        
                }
                NavigationLink(destination: OrdOnPlayView()){
                    Text("訂單投放中")
                        .foregroundColor(Color.red)
                        
                }
            }
      
        }
    }
}
struct ReportMenuView: View{
    var body: some View{
        VStack{
            HStack{
                Text("報表功能").font(.title3)
                Spacer()
            }
            .frame( height: 30, alignment: .center)
            .padding()
            
            HStack{
                NavigationLink(destination: ReportMainView()){
                    Text("訂單詳情＿數據主頁")
                        .foregroundColor(Color.red)
                }
            }
            HStack{
                NavigationLink(destination: ReportInqueryView()){
                    Text("訂單詳情＿交易查詢")
                        .foregroundColor(Color.red)
                }
            }
            HStack{
                NavigationLink(destination: ReportOutputView()){
                    Text("訂單詳情＿查詢結果")
                        .foregroundColor(Color.red)
                }
            }
        }
    }
}
struct OtherMenuView: View{
    var body: some View{
       
            VStack{
                HStack{
                    Text("其他功能").font(.title3)
                    Spacer()
                }
                .frame( height: 30, alignment: .center)
                .padding()
                HStack{
                    NavigationLink(destination: QAnswerView()){
                        Text("用戶Q&A")
                            .foregroundColor(Color.red)
                    }
                }
                HStack{
                    NavigationLink(destination: AgreementView()){
                        Text("嗨+服務條款")
                            .foregroundColor(Color.red)
                    }
                }
            }
            
      
       
    }
}
