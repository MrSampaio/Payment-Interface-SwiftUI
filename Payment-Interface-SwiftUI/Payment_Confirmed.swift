//
//  Payment_Confirmed.swift
//  Payment-Interface-SwiftUI
//
//  Created by PAULO EDUARDO BARBOSA DA SILVA on 06/04/26.
//

import SwiftUI

public struct Payment_Confirmed: View {
    public var body: some View {
        VStack {
            Spacer()
            Spacer()
            Text("Pagamento confirmado")
                .font(Font.custom("helvetica", size: 28))
                .bold()
                .foregroundColor(Color(red: 47/255, green: 57/255, blue: 42/255))
            Spacer()
            
            HStack{
                Image(systemName: "checkmark.circle")
                Text("R$ 36,90")
                    .font(Font.custom("helvetica", size: 34))
                    .bold()
            }
            .frame(width: 317, height: 41, alignment: .leading)
            
            VStack{
                VStack{
                    Text("Sobre a transação")
                        .frame(maxWidth: 317, alignment: .leading)
                        .font(Font.custom("Helvetica", size: 22))
                        .bold()
                    HStack{
                        Text("Data")
                            .font(Font.custom("Helvetica", size: 18))
                            .bold()
                        Spacer()
                        Text("Segunda-feira, 23/03/2026")
                    }
                    HStack{
                        Text("Horário")
                            .font(Font.custom("Helvetica", size: 18))
                            .bold()
                        Spacer()
                        Text("16h45")
                    }
                    HStack{
                        Text("ID da transação")
                            .font(Font.custom("Helvetica", size: 18))
                            .bold()
                        Spacer()
                        Text("XXXXXXXXX")
                    }
                }
                Text("-----------------------------------------")
                VStack{
                    Text("Dados do recebedor")
                        .frame(maxWidth: 317, alignment: .leading)
                        .font(Font.custom("Helvetica", size: 22))
                        .bold()
                    HStack{
                        Text("Nome")
                            .font(Font.custom("Helvetica", size: 18))
                            .bold()
                        Spacer()
                        Text("Fulano")
                    }
                    HStack{
                        Text("Data")
                            .font(Font.custom("Helvetica", size: 18))
                            .bold()
                        Spacer()
                        Text("Segunda-feira, 23/03/2026")
                    }
                    HStack{
                        Text("Horário")
                            .font(Font.custom("Helvetica", size: 18))
                            .bold()
                        Spacer()
                        Text("16h45")
                    }
                    HStack{
                        Text("ID da transação")
                            .font(Font.custom("Helvetica", size: 18))
                            .bold()
                        Spacer()
                        Text("XXXXXXXXX")
                    }
                }
                
            }
            .frame(width: 315, height: 339)
            
            VStack{
                Spacer()
                Spacer()
                Button{
                    
                }label: {
                    Text("Compartilhar")
                        .bold()
                        .foregroundColor(Color.white)
                }
                .frame(width: 285, height: 51)
                .background(Color(red: 47/255, green: 57/255, blue: 42/255))
                .cornerRadius(15)
                
                Spacer()
                
                Button{
                    
                }label: {
                    Text("Pagina Inicial")
                        .bold()
                        .foregroundColor(Color.white)
                }
                .frame(width: 285, height: 51)
                .background(Color(red: 47/255, green: 57/255, blue: 42/255))
                .cornerRadius(15)
                Spacer()
                Spacer()
            }
            .frame(width: 402 , height: 269)
            .background(Color(red: 20/255, green: 18/255, blue: 16/255))
            
            .clipShape(
                    UnevenRoundedRectangle(topLeadingRadius: 30, topTrailingRadius: 30)
                )
        }
        .ignoresSafeArea()
    }
}

#Preview {
    Payment_Confirmed()
}
