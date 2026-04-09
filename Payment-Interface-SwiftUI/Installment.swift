//
//  File.swift
//  Payment-Interface-SwiftUI
//
//  Created by PAULO EDUARDO BARBOSA DA SILVA on 08/04/26.
//

import SwiftUI

public struct Installment: View {

    
    @State var button1: some View = InstallmentButton(text: "1x R$30,00 sem juros", isSelected: true)
    @State var button2: some View = InstallmentButton(text: "2x R$15,50 com juros", isSelected: false)
    @State var button3: some View = InstallmentButton(text: "3x R$10,70 com juros", isSelected: false)
    @State var button4: some View = InstallmentButton(text: "4x R$8,80 com juros", isSelected: false)
    @State var button5: some View = InstallmentButton(text: "5x R$6,90 com juros", isSelected: false)


    public var body: some View {
        
        VStack(spacing: 10){
            button1
            button2
            button3
            button4
            button5
            
        }
        
        .frame(width: 301, height: 312)
        .background(Color.verdeEscuro)
        .cornerRadius(15)
        
    }
}
#Preview {
    Installment()
}
