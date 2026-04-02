//
//  Untitled.swift
//  Payment-Interface-SwiftUI
//
//  Created by PAULO EDUARDO BARBOSA DA SILVA on 02/04/26.
//

import SwiftUI


struct ScanView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                    
                }label: {
                    Text("PIX")
                }.background(Color(red: 87/255, green: 115/255, blue: 86/255))
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
        }
    }
}

#Preview {
    ScanView()
}
