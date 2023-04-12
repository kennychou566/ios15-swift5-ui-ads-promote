//
//  ReportOutput.swift
//  MyWorks
//
//  Created by Kenny on 2022/5/15.
//

import SwiftUI

struct ReportOutputView: View {
    
    var body: some View {
        
        ZStack{
            List{
                OrdSummarize(ordListParse: ordItems[5])
                AdResultTitle()
                AdResultSingle()
                AdResultSingle()
                AdResultSingle()
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



struct ReportOutputView_Previews: PreviewProvider {
    static var previews: some View {
        ReportOutputView()
    }
}
struct AdResultSingle: View {
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
        AdResultSingleRow()
    }
}
struct AdResultSingleRow: View{
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
            
           
        }
        .frame(maxWidth:.infinity, maxHeight: 130)
        .background(Color.init(hex: "#fef5f7"))
        .cornerRadius(10)
        
    }
}
