//
//  OwnDefineView.swift
//  MyWorks
//
//  Created by Kenny on 2022/5/19.
//

import SwiftUI

struct OwnDefineView: View {
    var body: some View {
        VStack{
            OwnDefineGender()
            OwnDefineAge()
            OwnDefineArea()
            OwnDefineInterest()
        }
        .frame(maxWidth:.infinity)
        .padding(.leading,28)
    }
}

struct OwnDefineView_Previews: PreviewProvider {
    static var previews: some View {
        OwnDefineView()
    }
}
struct OwnDefineInterest: View {
    let roles = ["影視媒體","帥哥美女","美食","音樂","劇情搞笑","舞蹈","旅遊","運動","生活","遊戲","寵物","財經投資","美妝","時尚","開箱評測","動漫卡通","3C科技","居家裝潢","汽機車","母嬰親子","知識教育","情感","宗教公益","農林漁牧","園藝","文化才藝"]
    @State private var selectedIndex = 0
    var body: some View {
        HStack{
            Text("興趣")
            Spacer()
        }
        .frame(maxWidth:.infinity)
        
        HStack{
            Picker(selection: $selectedIndex,label: Text("興趣選擇：")){
                ForEach(roles.indices,id:\.self){item in
                    Text(roles[item])
                }
               
            }
            
        }
        .frame(maxWidth: .infinity, minHeight: 30, alignment: .center)
        .border(Color(hexString: "#f5597f"), width: 1)
        .cornerRadius(15)
        .overlay(
            RoundedRectangle(
                cornerRadius: 15)
            .stroke(Color(hexString: "#f5597f"), lineWidth:2))
      //  Text("興趣選擇：\(roles[selectedIndex])")
    }
}
struct OwnDefineArea: View {
    let roles = ["台北市","新北市","桃園市","台中市","台南市","高雄市","新竹縣","苗栗縣","彰化縣","南投縣","雲林縣","嘉義縣","屏東縣","宜蘭縣","花蓮縣","台東縣","澎湖縣","金門縣","連江縣","基隆市","新竹市","嘉義市"]
    @State private var selection = 0
    var body: some View {
        HStack{
            Text("區域")
            Spacer()
        }
        .frame(maxWidth:.infinity)
        
        HStack{
            Button(action: {}) {
                Text("台灣")
                    .foregroundColor(Color(hexString: "#8e8e8e"))
            }
            .frame(maxWidth: .infinity, minHeight: 30, alignment: .center)
            .border(Color(hexString: "#8e8e8e"), width: 1)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(
                    cornerRadius: 15)
                .stroke(Color(hexString: "#8e8e8e"), lineWidth:2))
            HStack{
                Picker(selection: $selection,label: Text("")
                 
                ){
                    ForEach(roles.indices,id:\.self){item in
                        Text(roles[item])
                        
                    }
//                    Text("台北市").tag(1)
//                    Text("基隆市").tag(2)
//                    Text("新北市").tag(3)
//                    Text("桃園市").tag(4)
                }
               
                
            }
            .frame(maxWidth: .infinity, minHeight: 30, alignment: .center)
            .border(Color(hexString: "#f5597f"), width: 1)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(
                    cornerRadius: 15)
                .stroke(Color(hexString: "#f5597f"), lineWidth:2))
            
        }
    }
}
struct OwnDefineAge: View {
    @State public var ageBtn: String = "18-23"
    var body: some View {
        HStack{
            Text("年齡")
            Spacer()
        }
        .frame(maxWidth:.infinity)
        
        HStack{
            Button(action: {ageBtn = "不限"}) {
                Text("不限")
                    .foregroundColor(Color(hexString: ageBtn == "不限" ? "#ffffff" : "#8e8e8e"))
            }
            .frame(maxWidth: .infinity, minHeight: 30, alignment: .center)
            .background(Color(hexString: ageBtn == "不限" ? "#f5597f" : "#ffffff"))
            .border(Color(hexString: ageBtn == "不限" ? "#f5597f" : "#8e8e8e"), width: 1)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(
                    cornerRadius: 15)
                .stroke(Color(hexString: ageBtn == "不限" ? "#f5597f" : "#8e8e8e"), lineWidth:2))
            
            Button(action: {ageBtn = "18-23"}) {
                Text("18-23")
                    .foregroundColor(Color(hexString: ageBtn == "18-23" ? "#ffffff" : "#8e8e8e"))
            }
            .frame(maxWidth: .infinity, minHeight: 30, alignment: .center)
            .background(Color(hexString: ageBtn == "18-23" ? "#f5597f" : "#ffffff"))
            .border(Color(hexString: ageBtn == "18-23" ? "#f5597f" : "#8e8e8e"), width: 1)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(
                    cornerRadius: 15)
                .stroke(Color(hexString: ageBtn == "18-23" ? "#f5597f" : "#8e8e8e"), lineWidth:2))
            
            Button(action: {ageBtn = "24-30"}) {
                Text("24-30")
                    .foregroundColor(Color(hexString: ageBtn == "24-30" ? "#ffffff" : "#8e8e8e"))
            }
            .frame(maxWidth: .infinity, minHeight: 30, alignment: .center)
            .background(Color(hexString: ageBtn == "24-30" ? "#f5597f" : "#ffffff"))
            .border(Color(hexString: ageBtn == "24-30" ? "#f5597f" : "#8e8e8e"), width: 1)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(
                    cornerRadius: 15)
                .stroke(Color(hexString: ageBtn == "24-30" ? "#f5597f" : "#8e8e8e"), lineWidth:2))
        }
        HStack{
            Button(action: {ageBtn = "32-40"}) {
                Text("32-40")
                    .foregroundColor(Color(hexString: ageBtn == "32-40" ? "#ffffff" : "#8e8e8e"))
            }
            .frame(maxWidth: .infinity, minHeight: 30, alignment: .center)
            .background(Color(hexString: ageBtn == "32-40" ? "#f5597f" : "#ffffff"))
            .border(Color(hexString: ageBtn == "32-40" ? "#f5597f" : "#8e8e8e"), width: 1)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(
                    cornerRadius: 15)
                .stroke(Color(hexString: ageBtn == "32-40" ? "#f5597f" : "#8e8e8e"), lineWidth:2))
            
            Button(action: {ageBtn = "41-50"}) {
                Text("41-50")
                    .foregroundColor(Color(hexString: ageBtn == "41-50" ? "#ffffff" : "#8e8e8e"))
            }
            .frame(maxWidth: .infinity, minHeight: 30, alignment: .center)
            .background(Color(hexString: ageBtn == "41-50" ? "#f5597f" : "#ffffff"))
            .border(Color(hexString: ageBtn == "41-50" ? "#f5597f" : "#8e8e8e"), width: 1)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(
                    cornerRadius: 15)
                .stroke(Color(hexString: ageBtn == "41-50" ? "#f5597f" : "#8e8e8e"), lineWidth:2))
            
            Button(action: {ageBtn = "50以上"}) {
                Text("50以上")
                    .foregroundColor(Color(hexString: ageBtn == "50以上" ? "#ffffff" : "#8e8e8e"))
            }
            .frame(maxWidth: .infinity, minHeight: 30, alignment: .center)
            .background(Color(hexString: ageBtn == "50以上" ? "#f5597f" : "#ffffff"))
            .border(Color(hexString: ageBtn == "50以上" ? "#f5597f" : "#8e8e8e"), width: 1)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(
                    cornerRadius: 15)
                .stroke(Color(hexString: ageBtn == "50以上" ? "#f5597f" : "#8e8e8e"), lineWidth:2))
        }
    }
}

struct OwnDefineGender: View {
    @State public var genderBtn: String = "男"
    var body: some View {
        HStack{
            Text("性別")
            Spacer()
        }
        .frame(maxWidth:.infinity)
        HStack{
            Button(action: {genderBtn = "不限"}) {
                Text("不限")
                    .foregroundColor(Color(hexString: genderBtn=="不限" ? "#ffffff" : "#8e8e8e"))
            }
            .frame(maxWidth: .infinity, minHeight: 30, alignment: .center)
            .background(Color(hexString: genderBtn=="不限" ?  "#f5597f" : "#ffffff"))
            .border(Color(hexString: genderBtn=="不限" ? "#f5597f" : "#8e8e8e"), width: 1)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(
                    cornerRadius: 15)
                .stroke(Color(hexString: genderBtn=="不限" ? "#ffffff" : "#8e8e8e"), lineWidth:2))
            
            Button(action: {genderBtn = "男"}) {
                Text("男")
                    .foregroundColor(Color(hexString: genderBtn=="男" ? "#ffffff" : "#8e8e8e"))
            }
            .frame(maxWidth: .infinity, minHeight: 30, alignment: .center)
            .background(Color(hexString: genderBtn=="男" ? "#f5597f" : "#ffffff"))
            .border(Color(hexString: genderBtn=="男" ? "#f5597f" : "#8e8e8e"), width: 1)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(
                    cornerRadius: 15)
                .stroke(Color(hexString: genderBtn=="男" ? "#ffffff" : "#8e8e8e"), lineWidth:2))
            
            Button(action: {genderBtn = "女"}) {
                Text("女")
                    .foregroundColor(Color(hexString: genderBtn=="女" ? "#ffffff" : "#8e8e8e"))
            }
            .frame(maxWidth: .infinity, minHeight: 30, alignment: .center)
            .background(Color(hexString: genderBtn=="女" ? "#f5597f" : "#ffffff"))
            .border(Color(hexString: genderBtn=="女" ? "#f5597f" : "#8e8e8e"), width: 1)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(
                    cornerRadius: 15)
                .stroke(Color(hexString: genderBtn=="女" ? "#ffffff" : "#8e8e8e"), lineWidth:2))
        }
    }
}
