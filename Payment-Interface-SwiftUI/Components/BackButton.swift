//
//  Back_Button.swift
//  Payment-Interface-SwiftUI
//
//  Created by PAULO EDUARDO BARBOSA DA SILVA on 07/04/26.
//

import SwiftUI

public struct Back_Button<Destino: View>: View{
    
    var destino: Destino
    
    public var body: some View {
        NavigationLink(destination: destino){
            VStack {

                Image(systemName: "arrow.left")
            }
            .frame(width: 53, height: 53)
            .background(Color.verdeEscuro)
            .foregroundColor(.white)
            .cornerRadius(30)
        }
        
        
    }
}
#Preview {
    Back_Button(destino: HomeView())
}
