//
//  OrdOnPlayView.swift
//  MyWorks
//
//  Created by Lee Yan Pu on 2022/5/12.
//

import SwiftUI

struct OrdOnPlayView: View {
    var body: some View {
        ZStack{
            List{
                OrdSliderView()
                OrdStatusView(ordListParse: ordItems[6])
                OrderRowView(ordListParse: ordItems[6])
                OrdResponeView(ordListParse: ordItems[6])
                BtnGoBackView()
            }
            .padding(.horizontal,-25)
            .offset(y:-30)

         }
        .navigationTitle("訂單詳情")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct OrdOnPlayView_Previews: PreviewProvider {
    static var previews: some View {
        OrdOnPlayView()
    }
}
