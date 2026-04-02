//
//  Untitled.swift
//  Payment-Interface-SwiftUI
//
//  Created by PAULO EDUARDO BARBOSA DA SILVA on 01/04/26.
//

import SwiftUI




struct PixAreaCodeView: View {
    @State var pixKey: String = ""
    var body: some View {
        Spacer()
        VStack {
            Text("Área Pix")
                .font(Font.title2
                    .bold())
                .padding(.top,5)
                
            VStack{
                Text("Pagar com pix")
                    .bold()
                    .colorInvert()
                HStack{
                    TextField("Informe a chave Pix", text: $pixKey)
                        .cornerRadius(15)
                        .frame(width: 296, height: 51)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Image(systemName: "doc.on.doc")
                        .colorInvert()
                }
            }
            .frame(width: 342, height: 174)
            .padding(20)
            .background(Color(red: 47/255, green: 57/255, blue: 42/255))
            .cornerRadius(15)
            
            //Spacer()
            VStack{
                Spacer()
                Text("Outros:")
                HStack{
                    
                    Spacer()
                    VStack{
                        Button {
                            // Action here
                        } label: {
                            Image(systemName: "camera")
                                .foregroundStyle(Color.white)
                                
                        }
                        .frame(width: 119, height: 119)
                        .background(Color(red: 47/255, green: 57/255, blue: 42/255))
                        .cornerRadius(15)
                        Text("Scan")
                        
                    }
                    
                    Spacer()
                    VStack{
                        Button {
                            // Action here
                        } label: {
                            Image(systemName: "qrcode")
                                .foregroundStyle(Color.white)
                                
                        }
                        .frame(width: 119, height: 119)
                        .background(Color(red: 47/255, green: 57/255, blue: 42/255))
                        .cornerRadius(15)
                        Text("Gerar Qr")
                        
                    }
                    Spacer()
                }
                HStack{
                    Spacer()
                    VStack{
                        Button {
                            // Action here
                        } label: {
                            Image(systemName: "key")
                                .foregroundStyle(Color.white)
                                
                        }
                        .frame(width: 119, height: 119)
                        .background(Color(red: 47/255, green: 57/255, blue: 42/255))
                        .cornerRadius(15)
                        Text("Gerar Chaves")
                        
                    }
                    
                    Spacer()
                    
                    VStack{
                        Button {
                            // Action here
                        } label: {
                            Image(systemName: "star")
                                .foregroundStyle(Color.white)
                                
                        }
                        .frame(width: 119, height: 119)
                        .background(Color(red: 47/255, green: 57/255, blue: 42/255))
                        .cornerRadius(15)
                        //.shadow(radius: 5)
                        Text("Favoritos")
                        
                    }
                    Spacer()
                }
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
    PixAreaCodeView()
}
