//
//  InstallmentButton.swift
//  Payment-Interface-SwiftUI
//
//  Created by PAULO EDUARDO BARBOSA DA SILVA on 08/04/26.
//

import SwiftUI

public struct InstallmentButton: View {
    var text: String;
    var isSelected: Bool;
    var action: () -> Void;
    public var body: some View {
        Button{
           action()
        }
        label:{
            Text(text)
                .font(.custom("helvetica", size: 20))
                .bold(isSelected)
            
        }
        .frame(width: 258, height: 49)
        .background(Color.verdeClaro)
        .cornerRadius(15)
    }
}

/*#Preview {
    InstallmentButton(text: "teste", isSelected: false){
        
    }
}*/
