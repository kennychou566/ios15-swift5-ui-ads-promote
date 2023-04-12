//
//  ReportMainView.swift
//  MyWorks
//
//  Created by Kenny on 2022/5/13.
//

import SwiftUI

struct ReportMainView: View {
    
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
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing){
                Button{
                    
                }label: {
                    Image(systemName: "ellipsis")
                }
            }
            ToolbarItemGroup(placement: .bottomBar){
                Button(action:{}){
                    Text("回到主頁")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(10)
                }
                .frame(maxWidth:.infinity)
                .background(Color(hexString: "#f2305f"))
                .cornerRadius(25)
            }
        }
        
        
    }
}

struct ReportMainView_Previews: PreviewProvider {
    static var previews: some View {
        ReportMainView()
            .previewInterfaceOrientation(.portrait)
    }
}

struct AdResultDetail: View{
    var body: some View{
        VStack{
            HStack {

                VStack{
                    Text("666")
                        .font(.title2)
                        .foregroundColor(Color.init(hex: "#f4577d"))
                    Text("播放次數")
                        .font(.subheadline)
                        .foregroundColor(Color(hexString: "#8e8e8e"))
                }
                .frame(maxWidth:.infinity, maxHeight: 60)
                
                VStack{
                    HStack{
                        HStack{}
                            .frame(width: 2,height: 50)
                            .border(Color.init(hex: "#f896ae"))
                        Spacer()
                        
                        VStack{
                            Text("666")
                            .font(.title2)
                            .foregroundColor(Color.init(hex: "#f4577d"))
                            Text("按讚次數")
                                .font(.subheadline)
                                .foregroundColor(Color(hexString: "#8e8e8e"))
                        }
                        Spacer()
                        HStack{}
                        .frame(width: 2,height: 50)
                        .border(Color.init(hex: "#f896ae"))

                    }
                    
                }
                .frame(maxWidth:.infinity, maxHeight: 60)
               
                
                VStack{
                    Text("666")
                        .font(.title2)
                        .foregroundColor(Color.init(hex: "#f4577d"))
                    Text("留言次數")
                        .font(.subheadline)
                        .foregroundColor(Color(hexString: "#8e8e8e"))
                }
                .frame(maxWidth:.infinity, maxHeight: 60)
                
            }
            .frame( height: 60)
            
            HStack {//第二層

                VStack{
                    Text("666")
                        .font(.title2)
                        .foregroundColor(Color.init(hex: "#f4577d"))
                    Text("分享次數")
                        .font(.subheadline)
                        .foregroundColor(Color(hexString: "#8e8e8e"))
                }
                .frame(maxWidth:.infinity, maxHeight: 60)
                
                
                VStack{
                    HStack{
                        HStack{}
                            .frame(width: 2,height: 50)
                            .border(Color.init(hex: "#f896ae"))
                        Spacer()
                        
                        VStack{
                            Text("666")
                                .font(.title2)
                            .foregroundColor(Color.init(hex: "#f4577d"))
                            Text("主頁瀏覽數")
                                .font(.subheadline)
                                .foregroundColor(Color(hexString: "#8e8e8e"))
                        }
                        Spacer()
                        HStack{}
                        .frame(width: 2,height: 50)
                        .border(Color.init(hex: "#f896ae"))

                    }
                    
                }
                .frame(maxWidth:.infinity, maxHeight: 60)
               
                
                VStack{
                    Text("666")
                        .font(.title2)
                        .foregroundColor(Color.init(hex: "#f4577d"))
                    Text("粉絲新增數")
                        .font(.subheadline)
                        .foregroundColor(Color(hexString: "#8e8e8e"))
                }
                .frame(maxWidth:.infinity, maxHeight: 60)
                
            }
            .frame(maxWidth:.infinity, maxHeight: 60)
        }
        .frame(maxWidth:.infinity, maxHeight: 130)
        .background(Color.init(hex: "#fef5f7"))
        .cornerRadius(10)
        
    }
}

struct AdResultDate: View {
    var body: some View {
        VStack{
            HStack{
                HStack{
                    VStack{
                        HStack{
                            Text("2021/07/31")
                                .font(.headline)
                                .foregroundColor(.white)
                            Spacer()
                        }
                        
                        HStack{
                            Text("審核中")
                                .font(.headline)
                                .foregroundColor(.white)
                            Spacer()
                        }
                    }
                    .padding(.leading,10)
                    
                }
                
                HStack{
                    Spacer()
                    Text("$100")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding(10)
                }
            }
            
            
        }
        .frame( minHeight: 70)
        .background(Color(hexString: "#f2305f"))
        AdResultDetail()
    }
}
struct AdResultTitle: View {
    var body: some View {
        VStack{
            HStack{
                Text("投放數據")
                    .font(.title3)
                    .fontWeight(.heavy)
                    .padding(.top,0)
                Spacer()

                Image(systemName:"slider.horizontal.3")
                    .background(
                        NavigationLink(destination: ReportInqueryView()){
                            EmptyView()
                            
                            
                        }.opacity(0)
                    )
                
            }
            
        }
    }
}
struct OrdSummarize: View {
    var ordListParse: OrdListParse
    var body: some View {
        VStack{
            HStack{
                ordListParse.image
                    .resizable()
                    .frame(width: 110, height: 160)
                  
                
                VStack(alignment: .leading, spacing: 10){
                    HStack{
                        Text(verbatim: ordListParse.name)
                            .padding(.top,0)
                        Text(verbatim: ordListParse.tags.trunc(length: 5))
                            .padding(.top,0)
                            .lineLimit(3)
                            .truncationMode(.head)
                    }
                    //日期時間
                    Text(verbatim: ordListParse.date + " 09:02:00")
                        .font(.subheadline)
                        .foregroundColor(Color(hexString: "#8e8e8e"))
                        .padding(.top,-10)
                    AdGainLite()
                    BtnHplusAgain()
                    Spacer()
                    
                }
                .padding(.top,10)
                Spacer()
            }
        }
       
    }
}

struct AdGainLite: View {
    var body: some View {
        
        HStack {
            
            VStack{
                HStack{
                    Text("666")
                        .foregroundColor(Color.init(hex: "#f4577d"))
                        .font(.title2)
                }
                .frame(maxWidth:.infinity,alignment: .leading)
                HStack{
                    Text("播放次數")
                        .font(.subheadline)
                        .foregroundColor(Color(hexString: "#8e8e8e"))
                }
                .frame(maxWidth:.infinity,alignment: .leading)
            }
            .frame( height: 60)
            
            VStack{
                HStack{
                    Text("666")
                        .font(.title2)
                        .foregroundColor(Color.init(hex: "#f4577d"))
                        
                }
                .frame(maxWidth:.infinity,alignment: .leading)
                HStack{
                    
                    Text("按讚次數")
                        .font(.subheadline)
                        .foregroundColor(Color(hexString: "#8e8e8e"))
                }
                .frame(maxWidth:.infinity,alignment: .leading)
                
            }
            .frame( height: 60)
            
            VStack{
                HStack{
                    Text("666")
                        .font(.title2)
                        .foregroundColor(Color.init(hex: "#f4577d"))
                } .frame(maxWidth:.infinity,alignment: .leading)
                HStack{
                    Text("留言次數")
                        .font(.subheadline)
                        .foregroundColor(Color(hexString: "#8e8e8e"))
                }
                .frame(maxWidth:.infinity,alignment: .leading)
            }
            .frame( height: 60)
        }
        
    }
}

struct BtnHplusAgain: View {
    var body: some View {
        HStack{
            
            HStack{
                Text("再嗨＋")
                    .background(
                        NavigationLink(destination: ReportInqueryView()
                      //  .navigationBarBackButtonHidden(true)
                    ){EmptyView()}
                        .opacity(0)
                    )
                    .foregroundColor(Color.white)
                    .font(.subheadline)
                    .padding(.horizontal, 30)
            }
            .frame( minHeight: 30)
            .background(Color(hexString: "#f2305f"))
            .cornerRadius(25)
            
        }
        
    }
}

