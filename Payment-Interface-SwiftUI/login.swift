import SwiftUI

struct LoginView: View {
    // Estados para armazenar os inputs
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 0){
            ZStack(alignment: .bottomLeading){
                Image("loginTelaVerde")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity, maxHeight: 350)
                    .ignoresSafeArea()
                    .clipped()
                
                Text("Bem-vindo(a) ao Wolf Bank, seu banco digital.")
                    .foregroundColor(.white)
                    .font(.custom("Helvetica", size: 25))
                    .fontWeight(.bold)
                    .frame(width: 370)
                    .padding(.leading, 80)
                    .padding(.bottom, 40)
            }
            
            VStack{
                Text("Realize seu login")
                    .font(.custom("Helvetica", size: 22))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.bottom, 30)
                
                VStack{
                    TextField("", text: $email, prompt: Text("Email").foregroundColor(Color(red: 141/255, green: 141/255, blue: 141/255)))
                        .padding()
                        .frame(width: 300)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .background(Color(red: 23/255, green: 22/255, blue: 19/255))
                        .cornerRadius(15)
                        .foregroundColor(.white)
                        .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color(.verdeClaro)) // Certifique-se de que essa cor existe no seus Assets!
                        )

                        
                    SecureField("", text: $password, prompt: Text("Senha").foregroundColor(Color(red: 141/255, green: 141/255, blue: 141/255)))
                        .padding()
                        .frame(width: 300)
                        .foregroundColor(Color(red: 141/255, green: 141/255, blue: 141/255))
                        .cornerRadius(15)
                        .background(Color(red: 23/255, green: 22/255, blue: 19/255))
                        .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color(.verdeClaro))
                        )
                    
                    Button(action: {
                        autenticar()
                    }) {
                        Text("Entrar")
                            .foregroundColor(.white)
                            .font(.custom("Helvetica", size: 22))
                            .fontWeight(.bold)
                            .padding()
                            .frame(width: 300)
                            .background(Color(red: 47/255, green: 57/255, blue: 42/255))
                            .cornerRadius(15)
                        
                    } .padding(.top, 25)
                    
                    
                }
                
                Spacer()
                
                VStack{
                    Button {
                      
                    } label: {
                        Image("digital")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity, maxHeight: 50)
                            .padding(20)
                    }
                    
                }
                .frame(width: 96, height: 96)
                .background(.verdeEscuro) 
                .cornerRadius(50)
                
                Spacer()
                
                HStack{
                    Text("Ainda não possui conta?")
                        .foregroundColor(.white)
                        
                    Text("Cadastre-se!")
                        .foregroundColor(.verdeClaro)
                        .fontWeight(.bold)

                }
                

            }
            .padding(.top, 30)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                    UnevenRoundedRectangle(
                    topLeadingRadius: 0,
                    bottomLeadingRadius: 0,
                    bottomTrailingRadius: 0,
                    topTrailingRadius: 0
                )
                .fill(Color(red: 20/255, green: 18/255, blue: 16/255))
                .shadow(color: Color.green.opacity(0.5), radius: 10, x: 0, y: -10)
            )
            
        }
        // .keyboard para a tela não espremer quando o teclado subir 👇
        .ignoresSafeArea(.all, edges: .all)
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .edgesIgnoringSafeArea(.bottom) 
        
    }
        
    func autenticar() {
        print("Tentando logar com: \(email)")
    }
}

#Preview{
    LoginView()
}
