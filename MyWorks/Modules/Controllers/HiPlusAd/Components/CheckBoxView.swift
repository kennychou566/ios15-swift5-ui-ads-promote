//
//  CheckBoxView.swift
//  MyWorks
//
//  Created by Kenny on 2022/4/30.
//

import SwiftUI

struct CheckBoxView: View {
    @Binding var checkboxed: Bool
    var body: some View {
        Image(systemName: checkboxed ? "checkmark.square.fill" : "square")
            .foregroundColor(checkboxed ? Color(UIColor.systemBlue): Color.secondary)
            .onTapGesture {
                self.checkboxed.toggle()
            }
        
    }
}

struct CheckBoxView_Previews: PreviewProvider {
    struct CheckBoxViewHolder: View{
        @State var checked = false
        var body: some View {
            CheckBoxView(checkboxed: $checked)
        }
    }
    static var previews: some View {
        CheckBoxViewHolder()
    }
}
