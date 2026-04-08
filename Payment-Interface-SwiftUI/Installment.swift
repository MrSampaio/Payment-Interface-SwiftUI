//
//  File.swift
//  Payment-Interface-SwiftUI
//
//  Created by PAULO EDUARDO BARBOSA DA SILVA on 08/04/26.
//

import SwiftUI

public struct Installment: View {
    @State var isSelected_btn1: Bool = true;
    @State var isSelected_btn2: Bool = false;
    @State var isSelected_btn3: Bool = false;
    @State var isSelected_btn4: Bool = false;
    @State var isSelected_btn5: Bool = false;
    
    

    public var body: some View {
        
        
        VStack(spacing: 10){
            InstallmentButton(text: "1x R$30,00 sem juros", isBold: isSelected_btn1);

            InstallmentButton(text: "2x R$15,50 com juros", isBold: false)

            InstallmentButton(text: "3x R$10,70 com juros", isBold: false)

            InstallmentButton(text: "4x R$8,80 com juros", isBold: false)

            InstallmentButton(text: "5x R$6,90 com juros", isBold: false)

            
        }
        
        .frame(width: 301, height: 312)
        .background(Color.verdeEscuro)
        .cornerRadius(15)
        
    }
}
#Preview {
    Installment()
}
