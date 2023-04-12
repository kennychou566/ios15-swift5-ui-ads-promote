//
//  OrderListView.swift
//  MyWorks
//
//  Created by Kenny on 2022/5/1.
//

import SwiftUI

struct OrderListView: View {
    var body: some View {
        ScrollView{
            VStack{
                ForEach(ordItems) { ordListParse in
                    OrderListGen(ordListParse: ordListParse)
                }
               // OrderListGen()
            }
            .background(Color(hexString: "#f7f7f7"))
            .frame(maxWidth:.infinity)
            .padding(.horizontal,10)
                
         }
       
        .navigationTitle("訂單列表")
        .navigationBarTitleDisplayMode(.inline)
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

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView()
    }
}
struct OrderListGen: View {
    var ordListParse: OrdListParse
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "checkmark")
                    .resizable()
                    .foregroundColor(Color.white)
                    .frame(width: 30, height: 30)
                    .padding()
                    .background(Color(hexString: "#f66588"))
                    .cornerRadius(30)
                VStack{
                    Text("投放完成")
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(maxWidth:.infinity,alignment: .leading)
                    Text("已完成投放")
                        .foregroundColor(Color(hexString: "#8e8e8e"))
                        .frame(maxWidth:.infinity,alignment: .leading)
                }
            }
            .frame(maxWidth:.infinity,alignment: .leading)
            .padding(.top,10)
            Divider()
            HStack{
                OrderRowView(ordListParse: ordListParse)
            }
            .frame(maxWidth:.infinity,alignment: .leading)
            
            HStack{
                NavigationLink(destination: MidEffectiveView()){
                    Text("訂單詳情")
                        .foregroundColor(.black)
                    Image(systemName: "chevron.down")
                        .foregroundColor(.black)
                }
                
            }
            .frame(maxWidth:.infinity,minHeight: 60)
            
        }
        .background(.white)
    }
}
struct OrderListOld: View {
    var body: some View {
        ZStack{
            List(ordItems){ ordListParse in
                NavigationLink {
                    EffectiveView()
                } label: {
                    OrderRowView(ordListParse: ordListParse)
                }
                
            }
            .padding(.horizontal,-25)
            .offset(y:-30)
         }
        .navigationTitle("訂單列表")
        .navigationBarTitleDisplayMode(.inline)
    }
}
