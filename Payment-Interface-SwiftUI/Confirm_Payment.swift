//
//  Confirm_Payment.swift
//  Payment-Interface-SwiftUI
//
//  Created by PAULO EDUARDO BARBOSA DA SILVA on 06/04/26.
//

import SwiftUI

public struct Confirm_Payment: View {
    public var body: some View {
        VStack{
            Spacer()
            HStack{
                Back_Button()
                Text("Confirmação")
                Spacer()
            }
            .frame(width: 283, height: 57)
            
                .font(Font.custom("helvetica", size: 28))
                .bold()
                .foregroundColor(Color(red: 47/255, green: 57/255, blue: 42/255))
            Spacer()
            
            VStack{
                Spacer()
                Text("Digite sua senha")
                    .foregroundColor(Color(red: 47/255, green: 57/255, blue: 42/255))
                
                HStack
                {
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
                Spacer()
                VStack{
                    
                    Button {
                        
                    } label: {
                        Image("digital")
                            .resizable()
                            .scaledToFit()
                            .frame(width: .infinity, height: 50)
                            .padding(20)
                    }
                    
                }
                .frame(width: 96, height: 96)
                .background(.verdeEscuro)
                .cornerRadius(50)
                .padding(40)
                Spacer()
            }
        }
    }
}

#Preview {
    Confirm_Payment()
}
