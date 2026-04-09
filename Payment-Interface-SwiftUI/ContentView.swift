import SwiftUI

struct ContentView: View {
    var body: some View {
//        NavigationStack {
//            VStack(spacing: 20) {
//                Text("Meu App")
//                    .font(.largeTitle)
//                    .bold()
//
//                // Botão que leva para a tela de Login
//                NavigationLink("Ir para Login") {
//                    LoginView()
//                }
//                .buttonStyle(.borderedProminent)
//
//                // Botão que leva para a tela de Cadastro
//                NavigationLink("Criar Conta") {
//                    HomeView() // Corrigido de SingupView para SignupView
//                }
//                .buttonStyle(.bordered)
//            }
//            .padding()
//            .navigationTitle("Início") // Opcional: Adiciona um título na barra de navegação
//        }
        
        LoginView()
    }
}


struct login: View {
    var body: some View { Text("Tela de Login") }
}

struct SignupView: View {
    var body: some View { Text("Tela de Cadastro") }
}

#Preview{
    ContentView()
}
