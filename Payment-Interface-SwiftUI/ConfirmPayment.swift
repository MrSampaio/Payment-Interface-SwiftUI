//
//  Confirm_Payment.swift
//  Payment-Interface-SwiftUI
//
//  Created by PAULO EDUARDO BARBOSA DA SILVA on 06/04/26.
//

import SwiftUI

public struct Confirm_Payment: View {
    public var body: some View {
        VStack(spacing: 70){
            HStack(spacing: 5){
                Back_Button(destino: Payment())
                
                    .padding(.trailing, 30)
                Text("Confirmação")
                    .padding(.top, 40)
                    .font(Font.custom("helvetica", size: 28))
                    .bold()
                Spacer()
            }
                .frame(width: 317, height: 57)
                .foregroundColor(Color(red: 47/255, green: 57/255, blue: 42/255))
            Spacer()
            VStack{
                Text("Digite sua senha")
                    .foregroundColor(Color(red: 47/255, green: 57/255, blue: 42/255))
                
                HStack{
                    Rectangle()
                        .foregroundColor(Color(red: 245/255, green: 245/255, blue: 245/255))
                        .frame(width: 60, height: 60)
                        .cornerRadius(15)
                    Spacer()
                    Rectangle()
                        .foregroundColor(Color(red: 245/255, green: 245/255, blue: 245/255))
                        .frame(width: 60, height: 60)
                        .cornerRadius(15)
                    Spacer()
                    Rectangle()
                        .foregroundColor(Color(red: 245/255, green: 245/255, blue: 245/255))
                        .frame(width: 60, height: 60)
                        .cornerRadius(15)
                    Spacer()
                    Rectangle()
                        .foregroundColor(Color(red: 245/255, green: 245/255, blue: 245/255))
                        .frame(width: 60, height: 60)
                        .cornerRadius(15)
                    
                }
                .frame(width: 282, height: 60)
                .padding(.top, 40)
                
                Spacer()
                FingerPrint()
                .padding(.top, 40)
                
                Spacer()
            }
        }
    }
}

#Preview {
    Confirm_Payment()
}
