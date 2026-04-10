import SwiftUI

public struct Continue_Button<Destino: View>: View {
    
    var destino: Destino
    
    public var body: some View {
        
        NavigationLink(destination: destino) {
            VStack{
                Text("Continuar")
                    .font(Font.custom("helvetica", size: 22))
                    .bold()
                    .foregroundColor(Color.white)
            }
            .frame(width: 285, height: 50)
            .background(Color(red: 47/255, green: 57/255, blue: 42/255))
            .cornerRadius(15)
        }
    }
}

#Preview {
    
    NavigationStack {
        Continue_Button(destino: Text("Página Seguinte"))
    }
}
