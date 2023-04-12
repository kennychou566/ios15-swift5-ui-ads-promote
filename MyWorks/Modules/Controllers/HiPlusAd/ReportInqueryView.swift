//
//  ReportInqueryView.swift
//  MyWorks
//
//  Created by Kenny on 2022/5/13.
//

import SwiftUI

struct ReportInqueryView: View {
    @State public var isHidden = true
    
    var body: some View {
        
        ZStack{

            VStack{
                HStack{
                    OrdSummarize(ordListParse: ordItems[5])
                }
                .frame(height: 150)
                .padding()
                Divider()
                HStack{
                    
                    Text("投放數據")
                        .font(.title3)
                        .fontWeight(.heavy)
                        .padding(.top,0)
                    Spacer()
                    Image(systemName:"slider.horizontal.3")
                }
                .padding(10)
                Divider()
                AdInqueryDate()
                    .padding(.horizontal,10)
                
                AdInqueryRadio()
                    .padding(.horizontal,10)
                
                AdInquerySend()
                    .padding(.horizontal,10)
                Divider()
                AdInqueryDownload(isHidden: $isHidden)
                    .opacity(isHidden ? 0 : 1)
               
            }
            .background(.white)
       
         }
        .navigationTitle("訂單詳情")
        .navigationBarTitleDisplayMode(.automatic)
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing){
                Button{
                    isHidden.toggle()
                }label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.black)
                }
            }
            
        }
        
    }
    
}

struct ReportInqueryView_Previews: PreviewProvider {
    static var previews: some View {
        ReportInqueryView()
    }
}

struct AdInqueryDate: View {
  //  @State private var selected = 1
    @State private var dateBtn: String = ""
    var body: some View {
        VStack{
            HStack{
                Text("查詢時間")
                    .font(.title3)
                    .fontWeight(.heavy)
            }
            .frame(maxWidth:.infinity,alignment: .leading)
            .padding(.vertical,10)
            
            HStack{
                HStack{
             
                    Button(action:{dateBtn = "昨日成效"
                    }){
                        Text("昨日成效")
                            .foregroundColor(Color(hexString: dateBtn == "昨日成效" ? "#ffffff" : "#8e8e8e"))
                            .frame(maxWidth:.infinity,maxHeight: 25)
                            .font(.subheadline)
                            .padding(.vertical,5)
                    }
                    .border(Color(hexString: dateBtn == "昨日成效" ? "#f2305f" : "#8e8e8e"), width: 2)
                    .background(Color(hexString: dateBtn == "昨日成效" ? "#f2305f" : "#ffffff"))
                   .cornerRadius(25)
                   .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color(hexString: dateBtn == "昨日成效" ? "#f2305f" : "#8e8e8e"),lineWidth: 3))
                }
                .frame(maxWidth:.infinity)
                
                HStack{
                  
                    Button(action:{dateBtn = "最近7日"}){
                        Text("最近7日")
                            .foregroundColor(Color(hexString: dateBtn == "最近7日" ? "#ffffff" : "#8e8e8e"))
                            .frame(maxWidth:.infinity,maxHeight: 25)
                            .font(.subheadline)
                            .padding(.vertical,5)
                    }
                    .border(Color(hexString: dateBtn == "最近7日" ? "#f2305f" : "#8e8e8e"), width: 2)
                    .background(Color(hexString: dateBtn == "最近7日" ? "#f2305f" : "#ffffff"))
                   .cornerRadius(25)
                   .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color(hexString: dateBtn == "最近7日" ? "#f2305f" :  "#8e8e8e"),lineWidth: 3))
                }
                .frame(maxWidth:.infinity)
                
                HStack{
                  
                    Button(action:{dateBtn = "最近30日"}){
                        Text("最近30日")
                            .foregroundColor(Color(hexString:dateBtn == "最近30日" ? "#ffffff" : "#8e8e8e"))
                            .frame(maxWidth:.infinity,maxHeight: 25)
                            .font(.subheadline)
                            .padding(.vertical,5)
                    }
                    .border(Color(hexString: dateBtn == "最近30日" ? "#f2305f" : "#8e8e8e"), width: 2)
                    .background(Color(hexString: dateBtn == "最近30日" ? "#f2305f" : "#ffffff"))
                   .cornerRadius(25)
                   .overlay(RoundedRectangle( cornerRadius: 25).stroke(Color(hexString:dateBtn == "最近30日" ? "#f2305f": "#8e8e8e"),lineWidth: 3))
                }
                .frame(maxWidth:.infinity)
                
                HStack{
                 
                    Button(action:{dateBtn = "最近3月"}){
                        Text("最近3月")
                            .foregroundColor(Color(hexString:dateBtn == "最近3月" ? "#ffffff" : "#8e8e8e"))
                            .frame(maxWidth:.infinity,maxHeight: 25)
                            .font(.subheadline)
                            .padding(.vertical,5)
                    }
                    .border(Color(hexString:dateBtn == "最近3月" ? "#f2305f" : "#8e8e8e"), width: 2)
                    .background(Color(hexString: dateBtn == "最近3月" ? "#f2305f" : "#ffffff"))
                   .cornerRadius(25)
                   .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color(hexString:dateBtn == "最近3月" ? "#f2305f" : "#8e8e8e"),lineWidth: 3))
                }
                .frame(maxWidth:.infinity)
            }
            
            
        }
    }
    
}
struct AdInquerySend: View {
    var body: some View {
        HStack{
            HStack{
                Button(action:{}){
                    Text("重設")
                        .foregroundColor(Color(hexString: "#f2305f"))
                        .frame(maxWidth:.infinity)
                        .font(.title3)
                        .padding(.vertical,7)
                }
               .border(Color(hexString: "#f2305f"), width: 3)
               .cornerRadius(25)
               .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color(hexString: "#f2305f"),lineWidth: 5))
            
            }
            .frame(maxWidth:.infinity)
            
            HStack{
                Button(action:{}){
                    Text("確認送出")
                        .foregroundColor(.white)
                        .frame(maxWidth:.infinity)
                        .font(.title3)
                        .padding(.vertical,7)
                }
                .background(Color(hexString: "#f2305f"))
                .cornerRadius(25)
               
            }
            .frame(maxWidth:.infinity)
        }
        .padding(.top,20)
    }
}
struct AdInqueryRadio: View {
    var body: some View {
       
            VStack{
                HStack{
                    Text("你想查看的數據")
                        .font(.title3)
                        .fontWeight(.heavy)
                }
                .frame(maxWidth:.infinity,alignment: .leading)
                HStack{
                    RadioBtnGroups { selected in
                        print("數據選擇: \(selected)")
                    }
                }
               
            }
            .padding(.top,10)
         
   
        
       
        
    }
}

enum AdInqStr: String {
    case ctPlay = "播放次數"
    case ctLike = "按讚次數"
    case ctCommit = "留言次數"
    case ctShare = "分享次數"
    case ctPage = "主頁瀏覽數"
    case ctFans = "粉絲新增數"
}
struct RadioBtnGroups: View {
    let callback: (String) -> ()
    @State var selectedId: String = ""
    var body: some View {
        VStack{
            HStack{
                HStack{
                    radioPlay
                }
                HStack{
                    radioLike
                }
                HStack{
                    radioCommit
                }
            }
            HStack{
                HStack{
                    radioShare
                }
                HStack{
                    radioPage
                }
                HStack{
                    radioFans
                }
            }
        }
    }
    var radioPlay: some View {
        RadioBtnField(
            id: AdInqStr.ctPlay.rawValue,
            label:AdInqStr.ctPlay.rawValue,
            isMarked: selectedId == AdInqStr.ctPlay.rawValue ? true : false,
            callback: radioCircleCallback
        )
    }
    var radioLike: some View {
        RadioBtnField(
            id: AdInqStr.ctLike.rawValue,
            label:AdInqStr.ctLike.rawValue,
            isMarked: selectedId == AdInqStr.ctLike.rawValue ? true : false,
            callback: radioCircleCallback
        )
    }
    var radioCommit: some View {
        RadioBtnField(
            id: AdInqStr.ctCommit.rawValue,
            label:AdInqStr.ctCommit.rawValue,
            isMarked: selectedId == AdInqStr.ctCommit.rawValue ? true : false,
            callback: radioCircleCallback
        )
    }
    var radioShare: some View {
        RadioBtnField(
            id: AdInqStr.ctShare.rawValue,
            label:AdInqStr.ctShare.rawValue,
            isMarked: selectedId == AdInqStr.ctShare.rawValue ? true : false,
            callback: radioCircleCallback
        )
    }
    var radioPage: some View {
        RadioBtnField(
            id: AdInqStr.ctPage.rawValue,
            label:AdInqStr.ctPage.rawValue,
            isMarked: selectedId == AdInqStr.ctPage.rawValue ? true : false,
            callback: radioCircleCallback
        )
    }
    var radioFans: some View {
        RadioBtnField(
            id: AdInqStr.ctFans.rawValue,
            label:AdInqStr.ctFans.rawValue,
            isMarked: selectedId == AdInqStr.ctFans.rawValue ? true : false,
            callback: radioCircleCallback
        )
    }
    func radioCircleCallback(id: String) {
        selectedId = id
        callback(id)
    }
}
//MARK:- Single Radio Button Field
struct RadioBtnField: View {
    let id: String
    let label: String
    let size: CGFloat
    let color: Color
    let textSize: CGFloat
    let isMarked:Bool
    let callback: (String)->()
    
    init(
        id: String,
        label:String,
        size: CGFloat = 20,
        color: Color = Color(hexString: "#8e8e8e"),
        textSize: CGFloat = 14,
        isMarked: Bool = false,
        callback: @escaping (String)->()
    ) {
        self.id = id
        self.label = label
        self.size = size
        self.color = color
        self.textSize = textSize
        self.isMarked = isMarked
        self.callback = callback
    }
    
    var body: some View {
        Button(action:{
            self.callback(self.id)
        }) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: self.isMarked ? "largecircle.fill.circle" : "circle")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: self.size, height: self.size)
                Text(label)
                    .foregroundColor(Color.black)
                Spacer()
            }.foregroundColor(self.color)
        }
        .foregroundColor(Color.white)
    }
}
struct AdInqueryDownload: View {
    @Binding var isHidden: Bool
    var body: some View {
        VStack{
            HStack{
                HStack{
                    Text("更多操作")
                        .font(.title3)
                        .fontWeight(.heavy)
                        .padding([.top, .leading],10)
                }
                .frame(maxWidth:.infinity,alignment: .leading)
                HStack{
                    Image(systemName: "xmark")
                        .padding([.top, .trailing],10)
                        .onTapGesture {
                            self.isHidden=true
                        if( self.isHidden) {
                               print("報表下載頁面開啟！")
                        }
                        }
                }
                .frame(maxWidth:.infinity,alignment: .trailing)
            }
            .frame(maxWidth:.infinity)
            
           
            HStack{
                Image(systemName: "square.and.arrow.down").resizable()
                    .frame(width:32,height:32)
                    
                    
            }
            .frame(maxWidth:.infinity,alignment: .leading)
            .padding(.leading,35)
            
            
            HStack{
                Text("下載報表")
                    .frame(maxWidth:100,minHeight: 30,alignment: .top)
                    
                
            }
            .frame(maxWidth:.infinity,minHeight:80,alignment: .topLeading)
            .padding(.top,0)
            
        }
        .background(Color(hexString: "#f2f2f2"))
        .cornerRadius(25)
    }
}
