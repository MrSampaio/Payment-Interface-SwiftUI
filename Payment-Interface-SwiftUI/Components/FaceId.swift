//
//  FaceId.swift
//  Payment-Interface-SwiftUI
//
//  Created by PAULO EDUARDO BARBOSA DA SILVA on 08/04/26.
//

import SwiftUI

public struct FaceId<Destino: View>: View {

    var destino: Destino
    
    public var body: some View {
        NavigationLink(destination: destino) {
            VStack{
                Image(systemName: "faceid")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .padding(20)
            }
            .frame(width: 96, height: 96)
            .background(.verdeEscuro)
            .cornerRadius(50)
        }
        
        
    }
}

#Preview {
    NavigationStack{
        FaceId(destino: HomeView())
    }
   
}
