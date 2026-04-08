//
//  FingerPrint.swift
//  Payment-Interface-SwiftUI
//
//  Created by PAULO EDUARDO BARBOSA DA SILVA on 08/04/26.
//

import SwiftUI

public struct FingerPrint: View {
    public var body: some View {
        VStack{
            Button {
              
            } label: {
                Image("digital")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .padding(20)
            }
            
        }
        .frame(width: 96, height: 96)
        .background(.verdeEscuro)
        .cornerRadius(50)    }
}

#Preview {
    FingerPrint()
}
