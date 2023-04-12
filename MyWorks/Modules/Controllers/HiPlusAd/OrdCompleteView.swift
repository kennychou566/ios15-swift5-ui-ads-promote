//
//  OrdCompleteView.swift
//  MyWorks
//
//  Created by Kenny on 2022/5/12.
//

import SwiftUI

struct OrdCompleteView: View {
    var body: some View {
        ZStack{
            List{
                OrdSliderView()
                OrdStatusView(ordListParse: ordItems[1])
                OrderRowView(ordListParse: ordItems[1])
                OrdResponeView(ordListParse: ordItems[1])
                BtnGoBackView()
            }
            .padding(.horizontal,-25)
            .offset(y:-30)

         }
        .navigationTitle("訂單詳情")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct OrdCompleteView_Previews: PreviewProvider {
    static var previews: some View {
        OrdCompleteView()
    }
}
struct OrdResponeView: View {
    var ordListParse: OrdListParse
    var body: some View {
        VStack{
            HStack{
                Text("訂單  I  D")
                    .foregroundColor(Color(hexString: "#808080"))
                Spacer()
                Text(ordListParse.ordNo)
                    .foregroundColor(Color(hexString: "#191919"))
            }
            .padding(.vertical)
            HStack{
                Text("訂單時間:")
                    .foregroundColor(Color(hexString: "#808080"))
                Spacer()
                Text("2022-2-19 14:38")
                    .foregroundColor(Color(hexString: "#191919"))
            }
            .padding(.vertical)
            HStack{
                Text("訂單金額:")
                    .foregroundColor(Color(hexString: "#808080"))
                Spacer()
                Text("$1,200")
                    .foregroundColor(Color(hexString: "#191919"))
            }
            .padding(.vertical)
            HStack{
                Text("投放時間:")
                    .foregroundColor(Color(hexString: "#808080"))
                Spacer()
                Text("24小時")
                    .foregroundColor(Color(hexString: "#191919"))
            }
            .padding(.vertical)
            HStack{
                Text("投放方式:")
                    .foregroundColor(Color(hexString: "#808080"))
                Spacer()
                Text(ordListParse.method)
                    .foregroundColor(Color(hexString: "#191919"))
            }
            .padding(.vertical)
        }
    }
}
struct OrdSliderView: View {
    var body: some View {
        VStack{
            HStack{
                Image("slider")
                    .resizable()
                    .padding(0)
                    .cornerRadius(5)
                
            }
        }
    }
}
struct BtnGoBackView: View {
    var body: some View {
        VStack{
            HStack{
                Text("回到主頁")
                    .background(NavigationLink(destination: MidAdMainView()
                        .navigationBarBackButtonHidden(true)
                    ){EmptyView()}
                        .opacity(0)
                    )
                    .font(.headline)
            }
            .frame(maxWidth:.infinity,minHeight: 40, alignment:.center)
            .background(Color(hexString: "#f2305f"))
            .foregroundColor(Color.white)
            .cornerRadius(25)

            
        }
    }
}
