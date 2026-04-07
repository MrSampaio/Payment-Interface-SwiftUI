//
//  Untitled.swift
//  Payment-Interface-SwiftUI
//
//  Created by PAULO EDUARDO BARBOSA DA SILVA on 06/04/26.
//

import SwiftUI

struct Payment: View {
    var body: some View {
        VStack{
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            VStack{
                Spacer()
                Text("Conta")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(Font.custom("Helvetica", size: 34))
                    .bold()
                    
                VStack{
                    Text("Total a pagar")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("R$ 36,90")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(Font.custom("Helvetica", size: 28))
                        .bold()
                }
                
            }  .frame(maxWidth: 317, alignment: .leading)
            
            
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            VStack{
                Spacer()
                Text("Quem vai receber?")
                    .frame(maxWidth: 317, alignment: .leading)
                    .font(Font.custom("Helvetica", size: 22))
                    .bold()
                
                VStack{
                    HStack{
                        Text("Nome")
                            .font(Font.custom("Helvetica", size: 18))
                            .bold()
                        Spacer()
                        Text("Fulano")
                    }
                    HStack{
                        Text("CPF/CNPJ")
                            .font(Font.custom("Helvetica", size: 18))
                            .bold()
                        Spacer()
                        Text("***.***.***-**")
                    }
                    HStack{
                        Text("Instituição")
                            .font(Font.custom("Helvetica", size: 18))
                            .bold()
                        Spacer()
                        Text("Wolf Bank")
                    }
                    HStack{
                        Text("Chave")
                            .font(Font.custom("Helvetica", size: 18))
                            .bold()
                        Spacer()
                        Text("CNPJ")
                    }
                }.frame(width: 317, height: 164)
            }
            VStack{
                HStack{
                    Spacer()
                    Button{
                        
                    }label: {
                        Text("Á Vista")
                            .font(Font.custom("Helvetica",  size: 22))
                            .bold()
                    }.frame(width: 131, height: 39)
                        .background(Color(red: 87/255, green: 115/255, blue: 86/255))
                        .cornerRadius(15)
                    
                    Spacer()
                    Button{
                        
                    }label: {
                        Text("Parcelar")
                            .font(Font.custom("Helvetica",  size: 22))
                            .bold()
                    }
                    Spacer()
                }.frame(width: 287, height: 53)
                    .foregroundStyle(Color.white)
                    .background(Color(Color(red: 47/255, green: 57/255, blue: 42/255)))
                    .cornerRadius(15)
                Spacer()
            }
            
            VStack{
                Button{
                    
                }label: {
                    Text("Continuar")
                        .bold()
                        .foregroundColor(Color.white)
                }
                .frame(width: 285, height: 51)
                .background(Color(red: 47/255, green: 57/255, blue: 42/255))
                .cornerRadius(15)
            }
            .frame(width: 402 , height: 115)
            .background(Color(red: 20/255, green: 18/255, blue: 16/255))
            
            .clipShape(
                    UnevenRoundedRectangle(topLeadingRadius: 30, topTrailingRadius: 30)
                )
            
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    Payment()
}
