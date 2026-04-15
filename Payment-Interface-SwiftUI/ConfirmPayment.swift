import SwiftUI

public struct Confirm_Payment: View {
    @State var lengfht: Int = 4
    @FocusState private var isFocused: Bool
    
    @State private var password = ""
    @State private var navigateToFinish = false
    
    // VARIÁVEIS PARA O EFEITO DE MÁSCARA
    @State private var visibleIndices: Set<Int> = []
    
    public var body: some View {
        VStack(spacing: 70) {
            HStack(spacing: 5) {
                Back_Button(destino: HomeView())
                    .padding(.trailing, 30)
                Text("Confirmação")
                    .padding(.top, 40)
                    .font(.custom("helvetica", size: 28))
                    .bold()
                Spacer()
            }
            .frame(width: 317, height: 57)
            .foregroundColor(Color.verdeTitulo)
            
            Spacer()
            
            VStack {
                Text("Digite sua senha")
                    .foregroundColor(Color.verdeTitulo)
                
                HStack(spacing: 15) {
                    ForEach(0..<lengfht, id: \.self) { index in
                        Text(getPinDigit(at: index))
                            .font(.title2)
                            .bold()
                            .frame(width: 60, height: 60)
                            .background(Color.pinInput)
                            .foregroundStyle(Color.black)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.verdeClaro, lineWidth: password.count == index ? 3 : 1)
                            )
                    }
                }
                .padding(.top, 40)
                .overlay(
                   
                    SecureField("", text: $password)
                        .focused($isFocused)
                        .keyboardType(.numberPad)
                        .textContentType(.oneTimeCode)
                        .accentColor(.clear)
                        .foregroundColor(.clear)
                        //.opacity(0.01)
                        .onChange(of: password) { oldValue, newValue in
                            handlePasswordChange(oldValue: oldValue, newValue: newValue)
                        }
                )
                
                Spacer()
                FaceId(destino: Loading()).padding(.top, 40)
            }
            Spacer()
        }
        .navigationDestination(isPresented: $navigateToFinish) {
            Loading()
        }
        .onAppear { isFocused = true }
        
        .navigationBarBackButtonHidden(true)
    }

    // LÓGICA DE MÁSCARA
    func getPinDigit(at index: Int) -> String {
        if index < password.count {
            if visibleIndices.contains(index) {
                let charIndex = password.index(password.startIndex, offsetBy: index)
                return String(password[charIndex])
            } else {
                return "*"
            }
        }
        return ""
    }

    func handlePasswordChange(oldValue: String, newValue: String) {

        if newValue.count > 4 {
            password = String(newValue.prefix(4)) 
            return
        }

        // se o usuário adicionou um caractere
        if newValue.count > oldValue.count {
            let lastIndex = newValue.count - 1
            
            // adiciona o índice atual aos visíveis
            visibleIndices.insert(lastIndex)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                visibleIndices.remove(lastIndex)
            }
        }

        // navegação automática
        if password.count == 4 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                navigateToFinish = true
            }
        }
    }
}

#Preview {
    NavigationStack{
        Confirm_Payment()
    }
    
}
