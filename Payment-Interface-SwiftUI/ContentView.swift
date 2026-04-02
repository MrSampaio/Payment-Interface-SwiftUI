import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Meu App")
                    .font(.largeTitle).bold()

                // Botão que leva para a tela de Login
                NavigationLink(destination: LoginView()) {
                    Text("Ir para Login")
                }

                // Botão que leva para a tela de Cadastro
                NavigationLink(destination: SingupView()) {
                    Text("Criar Conta")
                    
                }
            }
        }
    }
}
