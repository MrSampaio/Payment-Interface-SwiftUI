//
//  Untitled.swift
//  Payment-Interface-SwiftUI
//
//  Created by PAULO EDUARDO BARBOSA DA SILVA on 06/04/26.
//

import SwiftUI

struct Payment: View {
    @State var isSelectted_aVista: Bool = false
    @State var isSelectted_Parcelar: Bool = false
    @State var aVistaColor: Color = Color(red: 87/255, green: 115/255, blue: 86/255)
    @State var ParcelarColor: Color = Color.verdeEscuro
    var body: some View {
        VStack{
            ScrollView{
                VStack{
                    
                    VStack(spacing: 40){
                        HStack{
                            Back_Button(destino: HomeView())
                            //teste
                            Spacer()
                        }
                            
                        Text("Conta")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(Font.custom("Helvetica", size: 34))
                            .padding(.top, 10)
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
                        .padding(10)
                        .padding(.top, 50)
                    
                    
                    Spacer()
                    VStack{
                        Text("Quem vai receber?")
                            .frame(maxWidth: 317, alignment: .leading)
                            .font(Font.custom("Helvetica", size: 22))
                            .bold()
                        
                        VStack(spacing: 15){
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
                            .padding(.top, 5)
                            
                    }.padding(30)
                    VStack{
                        HStack{
                            
                            Spacer()
                            Button{
                                isSelectted_Parcelar = false
                                
                                if(!isSelectted_Parcelar){
                                    ParcelarColor = Color.verdeEscuro
                                    aVistaColor = Color(red: 87/255, green: 115/255, blue: 86/255)
                                }
                                
                            }label: {
                                Text("Á Vista")
                                    .font(Font.custom("Helvetica",  size: 22))
                                    .bold()
                            }.frame(width: 131, height: 39)
                                .background(aVistaColor)
                                .cornerRadius(40)
                            
                            Spacer()
                            Button{
                                isSelectted_Parcelar = true;
                                if(isSelectted_Parcelar){
                                    isSelectted_Parcelar = true;
                                    ParcelarColor = Color(red: 87/255, green: 115/255, blue: 86/255)
                                    aVistaColor = Color.verdeEscuro
                                }
                            }label: {
                                Text("Parcelar")
                                    .font(Font.custom("Helvetica",  size: 22))
                                    .bold()
                            }
                            .frame(width: 131, height: 39)
                            .background(ParcelarColor)
                                .cornerRadius(40)
                            
                            
                            
                            
                            
                            Spacer()
                        }.frame(width: 287, height: 53)
                            .foregroundStyle(Color.white)
                            .background(Color(Color(red: 47/255, green: 57/255, blue: 42/255)))
                            .cornerRadius(40)
                        Spacer()
                    }.padding(.top, 20)
                    
                    if(isSelectted_Parcelar){
                        Installment()
                            .padding(.top, 28)
                        Spacer()
                    }
                    
                }
                
                
            }
            
            
            VStack{
                Button{
                    
                }label: {
                    Text("Continuar")
                        .font(Font.custom("Helvetica",  size: 22))
                        .bold()
                        .foregroundColor(Color.white)
                }
                .frame(width: 285, height: 51)
                .background(Color(red: 47/255, green: 57/255, blue: 42/255))
                .cornerRadius(15)
            }
            
            .frame(width: 402 , height: 109.3)
            .background(Color(red: 20/255, green: 18/255, blue: 16/255))
            
            .clipShape(
                    UnevenRoundedRectangle(topLeadingRadius: 30, topTrailingRadius: 30)
                )
        }.ignoresSafeArea()
        
        
    }
}

#Preview {
    Payment()
}
