//
//  OrdConfirmView.swift
//  MyWorks
//
//  Created by Kenny on 2022/5/12.
//

import SwiftUI

struct OrdConfirmView: View {
    var body: some View {
        ZStack{
            List{
                OrdSliderView()
                OrdStatusView(ordListParse: ordItems[7])
                OrderRowView(ordListParse: ordItems[7])
                OrdResponeView(ordListParse: ordItems[7])
                BtnGoBackView()
            }
            .padding(.horizontal,-25)
            .offset(y:-30)

         }
        .navigationTitle("訂單詳情")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct OrdConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        OrdConfirmView()
    }
}

