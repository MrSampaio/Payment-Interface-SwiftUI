//
//  InstallmentButton.swift
//  Payment-Interface-SwiftUI
//
//  Created by PAULO EDUARDO BARBOSA DA SILVA on 08/04/26.
//

import SwiftUI

public struct InstallmentButton: View {
    var text: String;
    @State var isBold: Bool;
    public var body: some View {
        Button{
            if(isBold){
                isBold = false
            }else{
                isBold = true
            }
        }label:{
            Text(text)
                .font(.custom("helvetica", size: 20))
                .bold(isBold)
            
        }
        .frame(width: 258, height: 49)
        .background(Color.verdeClaro)
        .cornerRadius(15)
    }
}

#Preview {
    InstallmentButton(text: "teste", isBold: false)
}
