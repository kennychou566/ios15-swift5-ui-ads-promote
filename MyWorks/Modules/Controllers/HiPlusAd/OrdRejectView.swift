//
//  OrdRejectView.swift
//  MyWorks
//
//  Created by Kenny on 2022/5/12.
//

import SwiftUI

struct OrdRejectView: View {
    var body: some View {
        ZStack{
            List{
                OrdSliderView()
                OrdStatusView(ordListParse: ordItems[8])
                OrderRowView(ordListParse: ordItems[8])
                OrdResponeView(ordListParse: ordItems[8])
                BtnGoBackView()
            }
            .padding(.horizontal,-25)
            .offset(y:-30)

         }
        .navigationTitle("訂單詳情")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct OrdRejectView_Previews: PreviewProvider {
    static var previews: some View {
        OrdRejectView()
    }
}
