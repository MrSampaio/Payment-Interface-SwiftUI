//
//  Untitled.swift
//  Payment-Interface-SwiftUI
//
//  Created by PAULO EDUARDO BARBOSA DA SILVA on 02/04/26.
//

import SwiftUI


struct ScanView: View {
    @State var pixSelected: Bool = true
    @State var pixKey: String = ""

    
    var body: some View {
        Spacer()
        VStack{
            HStack{
                Spacer()
                Button{
                    
                }label: {
                    Text("PIX")
                }.frame(width: 100, height: 29)
                .background(Color(red: 87/255, green: 115/255, blue: 86/255))
                    .cornerRadius(15)
                    
                Spacer()
                Button{
                    
                }label: {
                    Text("COD.BAR")
                }
                Spacer()
            }.frame(width: 210, height: 39)
                .foregroundStyle(Color.white)
                .background(Color(Color(red: 47/255, green: 57/255, blue: 42/255)))
                .cornerRadius(15)
            
            VStack{
                Spacer()
                Text("Escanear Qr Code")
                    .bold()
                    .font(Font.custom("helvetica", size: 22))
                    .foregroundColor(Color(Color(red: 47/255, green: 57/255, blue: 42/255)))
                Image("pixExemplo")
                Spacer()
            }
            Spacer()
            VStack{
                HStack{
                    TextField("Informe a chave Pix", text: $pixKey)
                        .cornerRadius(15)
                        .frame(width: 296, height: 51)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Image(systemName: "play")
                        .colorInvert()
                }
                
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
    ScanView()
}
