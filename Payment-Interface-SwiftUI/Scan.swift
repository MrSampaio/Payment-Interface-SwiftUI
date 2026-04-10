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
                
                HStack{
                    
                    Spacer()
                    
                    if(optionSelected == "PIX"){
                        
                        Button(action: {

                            isPixSelected = true
                            isCodeBarSelected = false
                            
                            
                        }) {
                            Text("PIX")
                        }.frame(width: 100, height: 29)
                            .background(isPixSelected ? .verdeClaro : .verdeEscuro)
                            .cornerRadius(30)
                        Spacer()
                        Button(action: {
                            isPixSelected = false
                            isCodeBarSelected = true
                        }){
                            Text("CODEBAR")
                        } .frame(width: 100, height: 29)
                        .background(isCodeBarSelected ? .verdeClaro : .verdeEscuro)
                        .cornerRadius(30)
                        
                    } else if(optionSelected == "CODEBAR"){
      
                        Button(action: {

                            isPixSelected = false
                            isCodeBarSelected = true
                            
                            
                        }) {
                            Text("PIX")
                        }.frame(width: 100, height: 29)
                            .background(isCodeBarSelected ? .verdeClaro : .verdeEscuro)
                            .cornerRadius(30)
                    
                        Spacer()
                        Button(action: {
                            isPixSelected = true
                            isCodeBarSelected = false
                        }){
                            Text("CODEBAR")
                        } .frame(width: 100, height: 29)
                        .background(isPixSelected ? .verdeClaro : .verdeEscuro)
                        .cornerRadius(30)
                    }

                    Spacer()
                }.frame(width: 230, height: 39)
                    .foregroundStyle(Color.white)
                    .background(Color(Color(red: 47/255, green: 57/255, blue: 42/255)))
                    .cornerRadius(30)
                    .padding(.leading, 10)
            }
            
            .padding(.trailing, 40)
            
            VStack{
                Spacer()
                Text("Escanear Qr Code")
                    .bold()
                    .font(Font.custom("helvetica", size: 22))
                    .foregroundColor(Color(red: 47/255, green: 57/255, blue: 42/255))
                
                #if targetEnvironment(simulator)
                // mostra uma câmera falsa se for simulado
                
                if(isPixSelected){
                    SimulationCamera(optionSelected: "PIX")
                } else if(isCodeBarSelected){
                    SimulationCamera(optionSelected: "CODEBAR")
                }

                #else
                // se for iphone fisico, exibe a camera real
                if(isPixSelected){
                    SimulationCamera(optionSelected: "PIX")
                } else if(isCodeBarSelected){
                    SimulationCamera(optionSelected: "CODEBAR")
                }
 
                #endif
                
                Spacer()
            }
            Spacer()
            VStack{
                HStack{
                    TextField("Informe a chave Pix", text: $pixKey)
                        .cornerRadius(15)
                        .frame(width: 296, height: 51)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Image(systemName: "play")
                        .colorInvert()
                }
                
            }
            .frame(width: 402 , height: 115)
            .background(Color(red: 20/255, green: 18/255, blue: 16/255))
            
            .clipShape(
                    UnevenRoundedRectangle(topLeadingRadius: 30, topTrailingRadius: 30)
                )
        }
        .ignoresSafeArea()
        
        .onAppear {
            if optionSelected == "PIX" {
                isPixSelected = true
                isCodeBarSelected = false
            } else if optionSelected == "CODEBAR" {
                isPixSelected = false
                isCodeBarSelected = true
            }
        }
    }
}

#Preview {
    ScanView(lastPage: HomeView(), optionSelected: "PIX")
}
