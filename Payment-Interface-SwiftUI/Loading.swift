//  Loading.swift
//  Payment-Interface-SwiftUI
//
//  Created by PAULO EDUARDO BARBOSA DA SILVA on 13/04/26.
//

import SwiftUI

struct Loading: View {
    var body: some View {
        VStack(spacing: 30){
            Image("Logo")
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: Color.verdeEscuro))
                
            Text("Wolf Bank está processando o pagamento...")
                .foregroundStyle(Color.cartaoIndex04)
                .font(.custom("HelveticaNeue-Bold", size: 14))
        }
        
    }
}

#Preview {
    Loading()
}
