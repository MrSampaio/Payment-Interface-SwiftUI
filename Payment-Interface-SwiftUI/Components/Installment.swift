//
//  File.swift
//  Payment-Interface-SwiftUI
//
//  Created by PAULO EDUARDO BARBOSA DA SILVA on 08/04/26.
//

import SwiftUI

public struct Installment: View {

    
    @State private var selecionado: String = "1x R$30,00 sem juros"
    let opcoes = ["1x R$30,00 sem juros", "2x R$15,50 com juros", "3x R$10,70 com juros", "4x R$8,80 com juros", "5x R$6,90 com juros"]
    
    public var body: some View {
        VStack(spacing: 28){
            VStack{
                Text("Crédito Disponível")
                    .font(.custom("helvetica", size: 22))
                    .padding(.leading, 20)
                Text("R$1072,00")
                    .font(.custom("helvetica-light", size: 18))
                    .padding(.trailing, 70)
                    
            }.frame(width: 301, alignment: .leading)
            .padding(.trailing, 10)
                
            VStack(spacing: 10){
                
                ForEach(opcoes, id: \.self) { opcao in
                    
                    InstallmentButton(text: opcao, isSelected: opcao == selecionado){
                        selecionado = opcao
                    }
                }
                              
                
            }
            .frame(width: 301, height: 312)
            .background(Color.verdeEscuro)
            .cornerRadius(15)
        }
        
        
    }
}
#Preview {
    Installment()
}
