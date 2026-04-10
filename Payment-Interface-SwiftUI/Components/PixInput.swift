import SwiftUI

public struct PixInput: View {
    
    @State var pixKey: String = ""
    
    var label: String
    var icon: String
    
    public var body: some View {

        HStack {
            TextField(label, text: $pixKey)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
            
            Image(icon)
                .foregroundColor(.verdeEscuro)
        }
        .padding(.horizontal, 15)
        .frame(width: 300, height: 50)
        
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(.white)
        )
        

        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(.verdeClaro, lineWidth: 2)
        )
    }
}

#Preview {
    PixInput(label: "Informe a chave pix", icon: "copy")
}
