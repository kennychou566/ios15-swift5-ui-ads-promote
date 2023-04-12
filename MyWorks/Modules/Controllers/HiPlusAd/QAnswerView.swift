//
//  QAnswerView.swift
//  MyWorks
//
//  Created by Kenny on 2022/5/23.
//

import SwiftUI

struct QAnswerView: View {
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
        .navigationBarTitleDisplayMode(.inline)
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

struct QAnswerView_Previews: PreviewProvider {
    static var previews: some View {
        QAnswerView()
    }
}
struct QA1AnsView: View {
    var body: some View {
        VStack{
            Text(Constants.shortText)
             .padding(10)
        }
        .frame(maxWidth:.infinity)
        .border(Color(hexString: "#e5e5e5"),width: 1)
        .cornerRadius(25)
        .overlay(RoundedRectangle(cornerRadius: 25)
            .stroke(Color(hexString: "#e5e5e5"),lineWidth: 2))
       
       // .padding(.vertical,18)
    }
}
struct QAlist: View {
    @State private var isViewHidden: Bool = true
    @State private var qaPointer: Int = 0
    var body: some View {
        HStack {
           Text("嗨＋功能介紹")
           Spacer()
           Image(systemName: "chevron.down")
        }
        .frame(minHeight:30,alignment: .top)
        .onTapGesture {
         //   print("[嗨＋功能介紹]被按了！")
            if qaPointer != 1 {
                isViewHidden = true
            }
            isViewHidden = isViewHidden ? false : true
            qaPointer = 1
           
        }
        if !isViewHidden && qaPointer == 1 {
            QA1AnsView()
                
        }
        HStack {
            Text("審核問題")
            Spacer()
            Image(systemName: "chevron.down")
        }
        .frame(minHeight:30,alignment: .top)
        .onTapGesture {
           // print("[審核問題]被按了！")
            if qaPointer != 2 {
                isViewHidden = true
            }
            isViewHidden = isViewHidden ? false : true
            qaPointer = 2
          
        }
        if !isViewHidden && qaPointer == 2 {
            QA1AnsView()
        }
        HStack {
            Text("充值問題")
            Spacer()
            Image(systemName: "chevron.down")
        }
        .frame(minHeight:30,alignment: .top)
        .onTapGesture {
          //  print("[充值問題]被按了！")
            if qaPointer != 3 {
                isViewHidden = true
            }
            isViewHidden = isViewHidden ? false : true
            qaPointer = 3
        }
        if !isViewHidden && qaPointer == 3 {
            QA1AnsView()
        }
        HStack {
            Text("投放問題")
            Spacer()
            Image(systemName: "chevron.down")
        }
        .frame(minHeight:30,alignment: .top)
        .onTapGesture {
          //  print("[投放問題]被按了！")
            if qaPointer != 4 {
                isViewHidden = true
            }
            isViewHidden = isViewHidden ? false : true
            qaPointer = 4
        }
        if !isViewHidden && qaPointer == 4 {
            QA1AnsView()
        }
        HStack {
            Text("訂單問題")
            Spacer()
            Image(systemName: "chevron.down")
        }
        .frame(minHeight:30,alignment: .top)
        .onTapGesture {
          //  print("[訂單問題]被按了！")
            if qaPointer != 5 {
                isViewHidden = true
            }
            isViewHidden = isViewHidden ? false : true
            qaPointer = 5
        }
        if !isViewHidden && qaPointer == 5 {
            QA1AnsView()
        }
    }
}
struct SearchBar: View {
    @Binding var text: String
    @State private var isEditing = false

    var body: some View {
        HStack {

            TextField("Search ...", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)

                        if isEditing {
                            Button(action: {
                                self.text = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .padding(.horizontal, 10)
                .onTapGesture {
                    self.isEditing = true
                }

//            if isEditing {
//                Button(action: {
//                    self.isEditing = false
//                    self.text = ""
//
//                }) {
//                    Text("Cancel")
//                }
//                .padding(.trailing, 10)
//                .transition(.move(edge: .trailing))
//                .animation(.easeIn(duration: 1.6),value: 1.5)
//                //  .animation(.default)
//            }
        }
    }
}
struct QAModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            Text("客服連接中...")
                .onTapGesture {
                    presentationMode
                        .wrappedValue.dismiss()
                }
        }
    }
       
}
