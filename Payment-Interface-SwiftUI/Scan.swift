
import SwiftUI

struct ScanView<LastPage: View>: View {
    @State var pixSelected: Bool = true
    @State var pixKey: String = ""

    
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
                            controleSwitch.toggle()
                        }) {
                            Text("PIX")
                        }.frame(width: 100, height: 29)
                            .background(controleSwitch ? .verdeClaro : .verdeEscuro)
                            .cornerRadius(30)
                        Spacer()
                        Button{
                            
                        }label: {
                            Text("COD.BAR")
                        }
                    } else if(optionSelected == "CODEBAR"){
                        Button{
                            
                        }label: {
                            Text("PIX")
                        }.frame(width: 100, height: 29)
                            
                            .cornerRadius(30)
                    
                        Spacer()
                        Button{
                            
                        }label: {
                            Text("COD.BAR")
                        }
                        .background(Color(red: 87/255, green: 115/255, blue: 86/255))
                        .cornerRadius(30)
                    }

                    Spacer()
                }.frame(width: 210, height: 39)
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
                
                if(optionSelected == "PIX"){
                    SimulationCamera(optionSelected: optionSelected)
                } else if(optionSelected == "CODEBAR"){
                    SimulationCamera(optionSelected: optionSelected)
                }

                #else
                // se for iphone fisico, exibe a camera real
                if(optionSelected == "PIX"){
                    RealCamera(optionSelected: optionSelected)
                } else if(optionSelected == "CODEBAR"){
                    RealCamera(optionSelected: optionSelected)
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
    }
}

#Preview {
    ScanView(lastPage: HomeView(), optionSelected: "PIX")
}
