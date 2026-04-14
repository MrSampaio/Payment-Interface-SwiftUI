import SwiftUI

struct ScanView<LastPage: View>: View {
    
    @State var pixKey = ""
    
    @State var isPixSelected = false
    @State var isCodeBarSelected = false
    
    var lastPage: LastPage
    var optionSelected: String

    
    @State private var controleSwitch = true
    
    // elimita a pagina e volta para a anterior
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        

        Spacer()
        VStack{
            HStack{
                Back_Button(destino: lastPage)
                
                HStack {
                    Spacer()
                    
                    // Botão PIX
                    Button(action: {
                        withAnimation(.easeInOut(duration: 0.3)) {
                                isPixSelected = true
                                isCodeBarSelected = false
                            }
                    }) {
                        Text("PIX")
                    }
                    .frame(width: 100, height: 29)
                    .background(isPixSelected ? Color.verdeClaro : Color.verdeEscuro)
                    .cornerRadius(30)
                    
                    Spacer()
                    
                    // Botão CODEBAR
                    Button(action: {
                        withAnimation(.easeInOut(duration: 0.3)) {
                                isPixSelected = false
                                isCodeBarSelected = true
                            }
                    }) {
                        Text("CODEBAR")
                    }
                    .frame(width: 100, height: 29)
                    .background(isCodeBarSelected ? Color.verdeClaro : Color.verdeEscuro)
                    .cornerRadius(30)
                    
                    Spacer()
                }
                .frame(width: 230, height: 39)
                .foregroundStyle(Color.white)
                .background(Color(red: 47/255, green: 57/255, blue: 42/255))
                .cornerRadius(30)
                .padding(.leading, 10)
            }
            
            .padding(.trailing, 40)
            
            VStack{
                Spacer()
                Text("Escanear Qr Code")
                    .bold()
                    .font(Font.custom("helvetica", size: 22))
                    .foregroundColor(Color.verdeTitulo)
                
                #if targetEnvironment(simulator)
                if isPixSelected {
                    SimulationCamera(optionSelected: "PIX")
                        .transition(.opacity.combined(with: .scale(scale: 0.95)))
                } else if isCodeBarSelected {
                    SimulationCamera(optionSelected: "CODEBAR")
                        .transition(.opacity.combined(with: .scale(scale: 0.95)))
                }
                #else
                if isPixSelected {
                    RealCamera(optionSelected: "PIX")
                        .transition(.opacity.combined(with: .scale(scale: 0.95)))
                } else if isCodeBarSelected {
                    RealCamera(optionSelected: "CODEBAR")
                        .transition(.opacity.combined(with: .scale(scale: 0.95)))
                }
                #endif
                
                Spacer()
            }
            Spacer()
            VStack{
                NavigationLink(destination: Payment(lastPage: lastPage)){
                    PixInput(label: "Digite a chave Pix", icon: "input-play")
                }
                
            }
            .frame(width: 402 , height: 115)
            .background(Color.cinzaFundoBotoes)
            
            .clipShape(
                UnevenRoundedRectangle(topLeadingRadius: 30, topTrailingRadius: 30)
            )
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        
        .onAppear {
            if(optionSelected) == "PIX" {
                isPixSelected = true
                isCodeBarSelected = false
            } else if(optionSelected == "CODEBAR"){
                isPixSelected = false
                isCodeBarSelected = true
            }
        }
    }
}

#Preview {
    NavigationStack{
        ScanView(lastPage: HomeView(), optionSelected: "PIX")
    }
    
}
