//
//  AdCheckOutView.swift
//  MyWorks
//
//  Created by Kenny on 2022/5/17.
//

import SwiftUI
struct AdList: Identifiable {
      var id: Int
      let adTitle, desc , adImage: String
}
struct AdCheckOutView: View {
    enum Promote: String, CaseIterable, Identifiable {
        case oneHour, sixHour, tweleHour ,twentyFour
        var id: Self { self }
    }
    @State var showModal = false

    @State private var budgetBtn: Int = 100
    @State private var budgetText: String = "100"
    
    @State private var selectedPromote: Promote = .oneHour
//    @State private var selected = 1

    var body: some View {
        
        ScrollView{
            VStack{
                OrderPreSet(ordListParse: ordItems[0])
                Divider()
                HiPTimeView()
                HiPMoreView()
                
                
                Divider()
                
                HiPBudgetView(budgetText: $budgetText)
                HiPStreamView(streamView:  .constant("2000"))
                HiAgreementView()
                PaymentView(showModal: $showModal)
                    .opacity(showModal ? 1 : 0)
            }
            .padding(.horizontal, 18)
            
        }
        .navigationTitle("嗨+投放")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItemGroup(placement: .bottomBar){
                HStack{
                VStack{
                    Text("投放金額")
                        .font(Font.headline)
                    
                    HStack{
                        Text("NTD")
                            .font(Font.title2)
                            .padding(.leading, 18.0)
                            .foregroundColor(.red)
                        
                        TextField("請輸入投放金額", text: $budgetText)
                            .font(Font.title2)
                            .foregroundColor(.red)
                        
                    }
                    
                }
                
                
                Button(action:{showModal = true
                    
                }){
                    Text("付款")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(.vertical, 8)
                }
                .frame(width:120)
                .background(Color(hexString: "#f2305f"))
                .cornerRadius(25)
                
//                .fullScreenCover(isPresented: $showModal){
//                    ModalView()
//
//                }
                }
                .opacity(showModal ? 0 : 1)
            }
            
        }
        
    }
    
}

struct AdCheckOutView_Previews: PreviewProvider {
    static var previews: some View {
        AdCheckOutView()
       //     .previewInterfaceOrientation(.portrait)
    }
}
struct MidAdCheckOutView: View {
    enum Promote: String, CaseIterable, Identifiable {
        case oneHour, sixHour, tweleHour ,twentyFour
        var id: Self { self }
    }
    @State var showModal = false

    @State private var budgetBtn: Int = 100
    @State private var budgetText: String = "100"
    
    @State private var selectedPromote: Promote = .oneHour


    var body: some View {
        
        ScrollView{
            VStack{
                OrderPreSet(ordListParse: ordItems[0])
                Divider()
                HiPTimeView()
                HiPMoreView()
                
                
                Divider()
                
                HiPBudgetView(budgetText: $budgetText)
                HiPStreamView(streamView:  .constant("2000"))
                HiAgreementView()
                PaymentView(showModal: $showModal)
                    .opacity(showModal ? 1 : 0)
            }
            .padding(.horizontal, 18)
            
        }
        .navigationTitle("嗨+投放")
        .toolbar{
            ToolbarItemGroup(placement: .bottomBar){
                HStack{
                    VStack{
                        Text("投放金額")
                            .font(Font.headline)
                        
                        HStack{
                            Text("NTD")
                                .font(Font.title2)
                                .padding(.leading, 18.0)
                                .foregroundColor(.red)
                            
                            TextField("請輸入投放金額", text: $budgetText)
                                .font(Font.title2)
                                .foregroundColor(.red)
                            
                        }
                        
                    }
                    
                    
                    Button(action:{showModal = true
                        
                    }){
                        Text("付款")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.vertical, 8)
                    }
                    .frame(width:120)
                    .background(Color(hexString: "#f2305f"))
                    .cornerRadius(25)
                    
                }
                .opacity(showModal ? 0 : 1)
            }
            
        }
        
    }
    
}
struct PaymentView: View {
    @Binding var showModal: Bool
    @State public var payBtn: String = "信用卡"
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Image(systemName: "xmark")
                    .frame(width:30,height:30)
                    .onTapGesture {
                        self.showModal = false
                    }
            }
            HStack{
                Text("支付方式")
                    .font(.title2)
                
            }
            HStack{
                Button(action:{payBtn = "信用卡"}){
                    Text("信用卡")
                        .font(.headline)
                        .foregroundColor(Color(hexString: payBtn == "信用卡" ? "#ffffff" : "#000000"))
                        .frame(maxWidth:.infinity)
                        .padding(.horizontal, 12)
                }
                .frame(maxWidth:.infinity,maxHeight: 70,alignment: .leading)
                .background(Color(hexString: payBtn == "信用卡" ?  "#f2305f" : "#f7f7f7"))
                
            }
            .frame(height:75)
            .padding(.horizontal,10)
            
            HStack{
                Button(action:{payBtn = "行動支付"}){
                    Text("行動支付")
                        .font(.headline)
                        .foregroundColor(Color(hexString:  payBtn == "行動支付" ? "#ffffff" : "#000000"))
                        .frame(maxWidth:.infinity)
                        .padding(.horizontal, 12)
                }
                .frame(maxWidth:.infinity,maxHeight: 70,alignment: .leading)
                .background(Color(hexString:  payBtn == "行動支付" ? "#f2305f" : "#f7f7f7"))
                
            }
            .frame(maxWidth:.infinity,maxHeight:75)
            .padding(.horizontal,10)
            
            Spacer()
            
            
            HStack{
                NavigationLink(destination: MidOrdConfirmView()){
                    Text("確認")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .frame(maxWidth:.infinity,maxHeight: 50)
                        .background(Color(hexString: "#f2305f"))
                    
                        .cornerRadius(25)
                }
            }
            .padding(10)

           
        }
        .frame(height: 340)
        .background(Color(hexString: "#f2f2f2"))
        .padding(.top,-339)
    }
       
}
struct ModalView: View {
    @Environment(\.presentationMode) var presentationMode
    @State public var payBtn: String = "信用卡"
    var body: some View {
        HStack{
            Spacer()
            Image(systemName: "xmark")
                .frame(width:30,height:30)
            .onTapGesture {
                presentationMode
                    .wrappedValue.dismiss()
            }
        }
        HStack{
            Text("支付方式")
                .font(.title2)
               
        }
        HStack{
            Button(action:{payBtn = "信用卡"}){
                Text("信用卡")
                    .font(.headline)
                    .foregroundColor(Color(hexString: payBtn == "信用卡" ? "#ffffff" : "#000000"))
                    .frame(maxWidth:.infinity)
                    .padding(.horizontal, 12)
            }
            .frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .leading)
            .background(Color(hexString: payBtn == "信用卡" ?  "#f2305f" : "#f7f7f7"))
        }
        .frame(height:70)
        .padding(.horizontal,10)
        HStack{
            Button(action:{payBtn = "行動支付"}){
                Text("行動支付")
                    .font(.headline)
                    .foregroundColor(Color(hexString:  payBtn == "行動支付" ? "#ffffff" : "#000000"))
                    .frame(maxWidth:.infinity)
                    .padding(.horizontal, 12)
            }
            .frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .leading)
            .background(Color(hexString:  payBtn == "行動支付" ? "#f2305f" : "#f7f7f7"))
        }
        .frame(height:70)
        .padding(.horizontal,10)
        
        Spacer()
        
        
        HStack{
            Button(action:{
                
                presentationMode
                    .wrappedValue.dismiss()
                
               
                
            }){
                Text("確認")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding(.vertical, 8)
            }
            .frame(maxWidth:.infinity,maxHeight: 50)
            .background(Color(hexString: "#f2305f"))
            .cornerRadius(25)
            

            
            
        }
        .padding(10)
    }
       
}

struct OrderPreSet: View {
    var ordListParse: OrdListParse
    var body: some View {
        VStack{
            HStack{
                ordListParse.image
                    .resizable()
                    .frame(width: 100, height: 100)
                
                
                VStack(alignment: .leading, spacing: 10){
                    Text(verbatim: ordListParse.name)
                        .font(.title3)
                        .fontWeight(.bold)
                        .frame(maxWidth:.infinity,alignment: .leading)
                    
                    Text(verbatim: ordListParse.tags)
                        .font(.headline)
                        .fontWeight(.bold)
                        .frame(maxWidth:.infinity,alignment: .leading)
                    
                    Spacer()
                }
            }
        }
        .padding(.bottom,5)
    }
}


struct HiAgreementView: View {
    @State private var showWebView = false
    @State private var checked = false
    var body: some View {
        HStack{
            
         //   Toggle("",isOn: $checked)
            
            Text("已閱讀並同意")
                .font(Font.headline)
                .padding(.leading, 18.0)
            CheckBoxView(checkboxed: $checked)
      
            NavigationLink(destination: AgreementView()){
                Text("嗨+服務條款")
                    .foregroundColor(Color.red)
            }

            Spacer()
            Spacer()
            Spacer()
        }
        
    }
}
struct HiPStreamView: View {
    @Binding var streamView: String
    @State private var isEditing = false
    var body: some View {
        HStack{
            Text("預期流量增加")
                .font(Font.headline)
            Spacer()
        }
        .frame(maxWidth:.infinity)
        
        HStack{
           
            TextField("2000", text: $streamView)
                .frame(height: 80)
                .font(.title)
                .background(Color(hexString: "#f2f2f2"))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "plus")
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                           .padding(.leading, -88)
                        
                        if isEditing {
                            Button(action: {
                                self.streamView = ""
                            }) {
                                //                                Image(systemName: "multiply.circle.fill")
                                //                                    .foregroundColor(.gray)
                                //                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .foregroundColor(.red)
                .multilineTextAlignment(.center)
                .onTapGesture {
                    self.isEditing = true
                }
        }
        
//        HStack{
//            Text("+2000")
//                    .font(.title)
//                    .foregroundColor(Color.red)
//                    .frame(width: 380, height: 80, alignment:.center)
//                    .background(Color(hexString: "#f2f2f2"))
//                    .cornerRadius(10)
//        }
        
    }
}
struct HiPMoreView: View {
    var body: some View {
        Divider()
        HStack{
            Text("把影片推薦給更多的人")
                .font(Font.headline)
        }
        .frame(maxWidth:.infinity,alignment: .leading)
        .padding(.top,10)
        HStack{
            RadioButtonGroups { selected in
                print("廣告投放選擇: \(selected)")
            }
            
        }
        .frame(maxWidth:.infinity, alignment: .top)
        .padding(.bottom,10)
        Divider()
    }
}
enum AdPush: String {
    case optsAI = "嗨＋ＡＩ投放"
    case optsOWN = "自訂義投放"
}

struct RadioButtonGroups: View {
    let callback: (String) -> ()
    
    @State var selectedId: String = "嗨＋ＡＩ投放"
    @State private var isViewHidden: Bool = true
    var body: some View {
        VStack {
            radioAiMajority
            radioOwnMajority
            if !isViewHidden{
                OwnDefineView()
                
            }
        }
        
    }
    
    var radioAiMajority: some View {
        RadioButtonField(
            id: AdPush.optsAI.rawValue,
            label: AdPush.optsAI.rawValue,
            isMarked: selectedId == AdPush.optsAI.rawValue ? true : false,
            callback: radioGroupCallback
        )
    }
    
    var radioOwnMajority: some View {
        RadioButtonField(
            id: AdPush.optsOWN.rawValue,
            label: AdPush.optsOWN.rawValue,
            isMarked: selectedId == AdPush.optsOWN.rawValue ? true : false,
            callback: radioGroupCallback
        )
    }
    
    func radioGroupCallback(id: String) {
        selectedId = id
        
        if id == "自訂義投放" {
            withAnimation{isViewHidden=false}
        }else{
            withAnimation{isViewHidden=true}
        }
        
        callback(id)
    }
}
//MARK:- Single Radio Button Field
struct RadioButtonField: View {
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
        color: Color = Color.red,
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
            HStack(alignment: .center, spacing: 10) {
                Image(systemName: self.isMarked ? "largecircle.fill.circle" : "circle")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: self.size, height: self.size)
                Text(label)
                    .font(Font.system(size: textSize))
                    .foregroundColor(Color.black)
                Spacer()
            }
            .foregroundColor(self.isMarked ? self.color : .black)
        }
        .foregroundColor(Color.white)
    }
}
struct HiPBudgetView: View {
    @Binding var budgetText: String
    @State public var budgetBtn: Int = 100
    var body: some View {
        HStack{
            Text("廣告預算")
                .font(Font.headline)
             
            Spacer()
            
        }
        HStack{
            
            Button(action: {budgetBtn=100
                TestData.budgetVal = budgetBtn
                self.budgetText = String(budgetBtn)
            }) {
                Text("$100")
                    .foregroundColor(Color(hexString: budgetBtn==100 ? "#ffffff" : "#8e8e8e"))
            }
            .frame(maxWidth:.infinity,minHeight: 35)
            .background(Color(hexString: budgetBtn==100 ? "#f5597f" : "#ffffff"))
            .border(Color(hexString: budgetBtn==100 ? "#f5597f" : "#ffffff"), width: 1)
            .cornerRadius(15)
            .controlSize(.small)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                .stroke(Color(hexString: budgetBtn==100 ? "#f5597f" : "#8e8e8e"), lineWidth:2)
                )
            
            Button(action: {budgetBtn=500
                TestData.budgetVal = budgetBtn
                self.budgetText = String(budgetBtn)
             
            }) {
                Text("$500")
                    .foregroundColor(Color(hexString: budgetBtn==500 ? "#ffffff" : "#8e8e8e"))
            }
            .frame(maxWidth:.infinity,minHeight: 35)
            .background(Color(hexString: budgetBtn==500 ? "#f5597f" : "#ffffff"))
            .border(Color(hexString: budgetBtn==500 ? "#f5597f" : "#ffffff"), width: 1)
            .cornerRadius(15)
            .controlSize(.small)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                .stroke(Color(hexString: budgetBtn==500 ? "#f5597f" : "#8e8e8e"), lineWidth:2)
                )
            
            
            Button(action: {budgetBtn=1000
                TestData.budgetVal = budgetBtn
                self.budgetText = String(budgetBtn)
            }) {
                Text("$1000")
                    .foregroundColor(Color(hexString: budgetBtn==1000 ? "#ffffff" : "#8e8e8e"))
            }
            .frame(maxWidth:.infinity,minHeight: 35)
            .background(Color(hexString: budgetBtn==1000 ? "#f5597f" : "#ffffff"))
            .border(Color(hexString: budgetBtn==1000 ? "#f5597f" : "#ffffff"), width: 1)
            .cornerRadius(15)
            .controlSize(.small)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                .stroke(Color(hexString: budgetBtn==1000 ? "#f5597f" : "#8e8e8e"), lineWidth:2)
                )
            
        }
        HStack{
            Button(action: {budgetBtn=2000
                self.budgetText = String(budgetBtn)
            }) {
                Text("$2000")
                    .foregroundColor(Color(hexString: budgetBtn==2000 ? "#ffffff" : "#8e8e8e"))
            }
            .frame(maxWidth:.infinity,minHeight: 35)
            .background(Color(hexString: budgetBtn==2000 ? "#f5597f" : "#ffffff"))
            .border(Color(hexString: budgetBtn==2000 ? "#f5597f" : "#ffffff"), width: 1)
            .cornerRadius(15)
            .controlSize(.small)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                .stroke(Color(hexString: budgetBtn==2000 ? "#f5597f" : "#8e8e8e"), lineWidth:2)
                )
            
            
            Button(action: {budgetBtn=9999
                self.budgetText = String(budgetBtn)
            }) {
                Text("自訂")
                    .foregroundColor(Color(hexString: budgetBtn==9999 ? "#ffffff" : "#8e8e8e"))
            }
            .frame(maxWidth:.infinity,minHeight: 35)
            .background(Color(hexString: budgetBtn==9999 ? "#f5597f" : "#ffffff"))
            .border(Color(hexString: budgetBtn==9999 ? "#f5597f" : "#ffffff"), width: 1)
            .cornerRadius(15)
            .controlSize(.small)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                .stroke(Color(hexString: budgetBtn==9999 ? "#f5597f" : "#8e8e8e"), lineWidth:2)
                )
            
            Button(action: {}) {
                
            }
            .frame(maxWidth:.infinity,minHeight: 35)
            
        }
        .padding(.bottom,10)
        
        Divider()
        
       
        
    
    }
}

struct HiPTimeView: View {
    @State public var timeBtn: Int = 1
    var body: some View {
        HStack{
            Text("嗨+ 時間")
                .font(Font.headline)
                .frame(maxWidth:.infinity,alignment: .leading)
        }
              
        HStack{
            Button(action: {timeBtn=1}) {
                Text("一小時")
                    .foregroundColor(Color(hexString: timeBtn==1 ? "#ffffff" : "#8e8e8e"))
            }
            .frame(maxWidth:.infinity,minHeight: 35)
            .background(Color(hexString: timeBtn==1 ? "#f5597f" : "#ffffff"))
            .cornerRadius(15)
            .controlSize(.small)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                .stroke(Color(hexString: timeBtn==1 ? "#ffffff" : "#8e8e8e"), lineWidth:2)
                )
            
            
            Button(action: {timeBtn=6}) {
                Text("六小時")
                    .foregroundColor(Color(hexString: timeBtn==6 ? "#ffffff" : "#8e8e8e"))
            }
            .frame(maxWidth:.infinity,minHeight: 35)
            .background(Color(hexString: timeBtn==6 ? "#f5597f" : "#ffffff"))
            .border(Color(hexString: timeBtn==6 ? "#f5597f" : "#8e8e8e"), width: 1)
            .cornerRadius(15)
            .controlSize(.small)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                .stroke(Color(hexString: timeBtn==6 ? "#ffffff" : "#8e8e8e"), lineWidth:2)
                )
            
            
            Button(action: {timeBtn=12}) {
                Text("12小時")
                    .foregroundColor(Color(hexString: timeBtn==12 ? "#ffffff" : "#8e8e8e"))
            }
            .frame(maxWidth:.infinity,minHeight: 35)
            .background(Color(hexString: timeBtn==12 ? "#f5597f" : "#ffffff"))
            .border(Color(hexString: timeBtn==12 ? "#f5597f" : "#8e8e8e"), width: 1)
            .cornerRadius(15)
            .controlSize(.small)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                .stroke(Color(hexString: timeBtn==12 ? "#ffffff" : "#8e8e8e"), lineWidth:2)
                )
            
            Button(action: {timeBtn=24}) {
                Text("24小時")
                    .foregroundColor(Color(hexString: timeBtn==24 ? "#ffffff" : "#8e8e8e"))
            }
            .frame(maxWidth:.infinity,minHeight: 35)
            .background(Color(hexString: timeBtn==24 ? "#f5597f" : "#ffffff"))
            .border(Color(hexString: timeBtn==24 ? "#f5597f" : "#8e8e8e"), width: 1)
            .cornerRadius(15)
            .controlSize(.small)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                .stroke(Color(hexString: timeBtn==24 ? "#f5597f" : "#8e8e8e"), lineWidth:2)
                )
        }
       
    }
}




