//
//  VideoSelectView.swift
//  MyWorks
//
//  Created by Kenny on 2022/5/1.
//

import SwiftUI

struct VideoSelectView: View {
   
    var body: some View {
       ZStack{
           List(menuItems){ vrow in
               VideoRowView(vrow: vrow)
           }
           .padding(.horizontal,-25)
           .offset(y:-30)
        }
       .navigationTitle("選影音上熱門")
       .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct VideoSelectView_Previews: PreviewProvider {
    static var previews: some View {
        VideoSelectView()
    }
}
struct MidVideoSelectView: View {
   
    var body: some View {
       ZStack{
           List(menuItems){ vrow in
               VideoRowView(vrow: vrow)
           }
           .padding(.horizontal,-25)
           .offset(y:-30)
        }
       .navigationTitle("選影音上熱門")
       
        
    }
}
