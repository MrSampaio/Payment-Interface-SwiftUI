import SwiftUI

struct SingupView: View {
    // Estados para armazenar os inputs
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 20) {
            // Título
            Text("Bem-vindo")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 40)
            
            // Campo de Email
            TextField("Email", text: $email)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
            
            // Campo de Senha (SecureField esconde os caracteres)
            SecureField("Senha", text: $password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
            
            // Botão de Login
            Button(action: {
                autenticar()
            }) {
                Text("Entrar")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.top, 20)
            
            Spacer()
        }
        .padding()
    }
    
    func autenticar() {
        print("Tentando logar com: \(email)")
        // Aqui você adicionaria a lógica de Firebase ou API
    }
}
