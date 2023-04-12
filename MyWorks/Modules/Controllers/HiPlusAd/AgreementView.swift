//
//  AgreementView.swift
//  MyWorks
//
//  Created by Kenny on 2022/4/30.
//

import SwiftUI

struct AgreementView: View {
    var body: some View {
        WebView(url: URL(string: "https://www.hi8.tw/article?id=14")!)
            .navigationTitle("嗨+服務條款")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct AgreementView_Previews: PreviewProvider {
    static var previews: some View {
        AgreementView()
    }
}
