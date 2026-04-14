import SwiftUI

public struct Continue_Button<Destino: View>: View {
    
    var destino: Destino
    var texto: String
    
    public var body: some View {
        
        NavigationLink(destination: destino) {
            VStack{
                Text(texto)
                    .font(Font.custom("helvetica", size: 22))
                    .bold()
                    .foregroundColor(Color.white)
            }
            .frame(width: 285, height: 50)
            .background(Color.verdeEscuro)
            .cornerRadius(15)
        }
    }
}

#Preview {
    NavigationStack {
        Continue_Button(destino: Text("Página Seguinte"), texto: "Ola! Sou um botao")
    }
}
