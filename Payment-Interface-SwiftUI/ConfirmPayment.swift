//
//  Confirm_Payment.swift
//  Payment-Interface-SwiftUI
//
//  Created by PAULO EDUARDO BARBOSA DA SILVA on 06/04/26.
//

import SwiftUI

public struct Confirm_Payment: View {
    @State var password: String = ""
    @State var lengfht:Int = 4
    @FocusState private var isFocused: Bool
    
   
    
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
                    ForEach(0..<lengfht, id: \.self){index in
                        Text(getPinDigit(at: index))
                            .foregroundColor(Color.black)
                            .frame(width: 60, height: 60)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.verdeEscuro, lineWidth: password.count == index ? 2 : 0)
                                
                            )
                        Spacer()
                    }
                                        
                }
                .frame(width: 282, height: 60)
                .padding(.top, 40)
                
                // SecureField oculto que captura os números
                TextField("", text: $password)
                    .focused($isFocused)
                    .keyboardType(.numberPad)
                    .textContentType(.oneTimeCode) // Auxilia no preenchimento automático
                    
                    //.opacity(0.03) // Torna o campo invisível, mas interativo
                    //.hidden()
                    .font(Font.custom("helvetica", size: 300))
                    .frame(width: 282, height: 0)
                    .onChange(of: password) { oldValue, newValue in
                        // Limita o número de caracteres
                        if newValue.count > lengfht{
                            password = String(newValue.prefix(lengfht))
                        }
                    }
                
                Spacer()
                FingerPrint()
                .padding(.top, 40)
                
                Spacer()
                
                .navigationBarBackButtonHidden(true)
            }
        }
    }
    // Função para obter o caractere correto ou vazio
       func getPinDigit(at index: Int) -> String {
           if index < password.count {
               let charIndex = password.index(password.startIndex, offsetBy: index)
               return String(password[charIndex])
           }
           return ""
       }
    
}

#Preview {
    Confirm_Payment()
}
