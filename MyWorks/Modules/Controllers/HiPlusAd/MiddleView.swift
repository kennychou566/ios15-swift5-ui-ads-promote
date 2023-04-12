//
//  MiddleView.swift
//  MyWorks
//
//  Created by Lee Yan Pu on 2022/5/24.
//

import SwiftUI

struct MiddleView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MiddleView_Previews: PreviewProvider {
    static var previews: some View {
        MiddleView()
    }
}

//查看審核
struct MidOrdConfirmView: View {
    var body: some View {
        ZStack{
            List{
                OrdSliderView()
                OrdStatusView(ordListParse: ordItems[7])
                OrderRowView(ordListParse: ordItems[7])
                OrdResponeView(ordListParse: ordItems[7])
                BtnGoBackView()
            }
            .padding(.horizontal,-25)
            .offset(y:-30)

         }
        .navigationTitle("訂單詳情")
        
    }
}
//用戶Q&A
struct MidQAnswerView: View {
    @State private var showModal = false
    
    
    var body: some View {
        ScrollView{
            VStack{
                SearchBar(text: .constant(""))
                QAlist()
            }
            .frame(maxWidth:.infinity)
            .padding(.horizontal, 18)
            
        }
        .navigationTitle("用戶Q&A")
        .toolbar{
            ToolbarItemGroup(placement: .bottomBar){
        
                Button(action:{showModal = true}){
                    Text("聯繫客服")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(.vertical, 8)
                }
                .frame(maxWidth:.infinity)
                .background(Color(hexString: "#f2305f"))
                .cornerRadius(25)
                .fullScreenCover(isPresented: $showModal){
                        QAModalView()
                  //  Color.clear
                       
                }
            }
        }
        
        
    }
}
//選影音上熱門
struct MidAdMainView: View {
    
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
    }
}
//數據主頁，分析報告
struct MidReportMainView: View {
    
    var body: some View {
        ZStack{
            List{
                OrdSummarize(ordListParse: ordItems[5])
                AdResultTitle()
                AdResultDate()
                AdResultDate()
            }
            .padding(.horizontal,-25)
            .offset(y:-30)
            
                
         }
        .navigationTitle("訂單詳情")
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing){
                Button{
                    
                }label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.black)
                }
            }
            ToolbarItemGroup(placement: .bottomBar){
                NavigationLink(destination: MidAdMainView()
                    .navigationBarBackButtonHidden(true)
                ){
                    HStack{
                        Text("回到主頁")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            
                    }
                    .frame(width:300,height: 38)
                    .background(Color(hexString: "#f2305f"))
                    .cornerRadius(25)
                   
                }

            }
        }
        
        
    }
}
//投放成效
struct MidEffectiveView: View {
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
        
    }
}
//訂單列表
struct MidOrderListView: View {
    var body: some View {
        ScrollView{
            VStack{
                ForEach(ordItems) { ordListParse in
                    OrderListGen(ordListParse: ordListParse)
                }
              
            }
            .background(Color(hexString: "#f7f7f7"))
            .frame(maxWidth:.infinity)
            .padding(.horizontal,10)
                
         }
       
        .navigationTitle("訂單列表")
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing){
                Button{
                   // isHidden.toggle()
                }label: {
                    Image(systemName: "slider.horizontal.3")
                }
            }
            
        }
    }
}
