import SwiftUI

struct LoginView: View {
    // Estados para armazenar os inputs
    @State private var cpf = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 0){
                ZStack(alignment: .bottomLeading){
                    Image("loginTelaVerde")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: 350)
                        .ignoresSafeArea()
                        .clipped()
                    VStack(spacing: 45){
                        Image("Logo")
                            .padding(.leading, 80)
                        
                        Text("Bem-vindo(a) ao Wolf Bank, seu banco digital.")
                            .foregroundColor(.white)
                            .font(.custom("Helvetica", size: 25))
                            .fontWeight(.bold)
                            .frame(width: 370)
                            .padding(.leading, 80)
                            .padding(.bottom, 30)
                    }
                    
                }
                
                VStack{
                    Text("Realize seu login")
                        .font(.custom("Helvetica", size: 22))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.bottom, 30)
                    
                    VStack{
                        TextField("", text: $cpf, prompt: Text("Digite seu CPF").foregroundColor(Color.cinzaTexto))
                            .padding()
                            .frame(width: 300)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .background(Color.textfieldLogin)
                            .cornerRadius(15)
                            .foregroundColor(.white)
                            .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.verdeClaro)
                            )

                            
                        SecureField("", text: $password, prompt: Text("Digite sua senha").foregroundColor(Color.cinzaTexto))
                            .padding()
                            .frame(width: 300)
                            .foregroundColor(Color.cinzaTexto)
                            .cornerRadius(15)
                            .background(Color.textfieldLogin)
                            .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color(.verdeClaro))
                            )
                        

                        HStack{

                            Continue_Button(destino: HomeView(), texto: "Entrar")
                                .foregroundColor(.white)
                                .font(.custom("Helvetica", size: 22))
                                .fontWeight(.bold)
                                .frame(width: 300)
                                .background(Color.verdeEscuro)
                                .cornerRadius(15)

                            
                        } .padding(.top, 30)

                    }
                    
                    Spacer()
                    
                    FingerPrint(destino: HomeView())
                    
                    Spacer()
                    
                    HStack{
                        Text("Ainda não possui conta?")
                            .foregroundColor(.white)
                            .font(.custom("Helvetica", size: 15))
                            
                        Text("Cadastre-se!")
                            .foregroundColor(.verdeClaro)
                            .fontWeight(.bold)
                            .font(.custom("Helvetica", size: 15))

                    }
                    .padding(.bottom, 25)
                }
                .padding(.top, 18)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                        UnevenRoundedRectangle(
                        topLeadingRadius: 0,
                        bottomLeadingRadius: 0,
                        bottomTrailingRadius: 0,
                        topTrailingRadius: 0
                    )
                        .fill(Color.cinzaFundoBotoes)
                    .shadow(color: Color.green.opacity(0.5), radius: 10, x: 0, y: -5)
                )
                
            }
            
            // .keyboard para a tela não espremer quando o teclado subir 👇
            .ignoresSafeArea(.all, edges: .all)
            .ignoresSafeArea(.keyboard)
            .edgesIgnoringSafeArea(.bottom)

        }
        


        
    }
        
    func autenticar() {
        print("Tentando logar com: \(cpf)")
    }
}

#Preview{
    NavigationStack{
        LoginView()
    }
    
}
