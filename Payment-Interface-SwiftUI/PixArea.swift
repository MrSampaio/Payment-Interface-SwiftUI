import SwiftUI

struct PixAreaCodeView: View {
    
    // elimita a pagina e volta para a anterior
    @Environment(\.dismiss) var dismiss
    
    @State var pixKey: String = ""
    var body: some View {
        VStack (spacing: 30){
            HStack(alignment: .firstTextBaseline){
                
                Back_Button(destino: HomeView())
                    
                Text("Área Pix")
                    .font(Font.custom("helvetica", size: 28))
                    .bold()
                    .padding(.leading, 60)
                   
            } .padding(.top, 80)
                // .padding(.leading, 40)
                .padding(.trailing, 100)

            
            VStack{
                Text("Pagar com pix")
                    .bold()
                    .colorInvert()
                HStack{
                    PixInput(label: "Informe a chave pix", icon: "copy")
                        
                        
                }
            }
            .frame(width: 342, height: 174)
            .background(Color(red: 47/255, green: 57/255, blue: 42/255))
            .cornerRadius(15)
            
            //Spacer()
            VStack(spacing: 10){
                Text("Outros:")
                    .font(Font.custom("helvetica", size: 22))
                    .bold()
                HStack{
                    
                    Spacer()
                    VStack{
                        
                        NavigationLink(destination: ScanView(lastPage: PixAreaCodeView(), optionSelected: "PIX")){
                            Button {
                               
                            } label: {
                                Image(systemName: "camera")
                                    .foregroundStyle(Color.white)
                                    .font(Font.custom("helvetica", size: 32))
                                
                                
                            }
                            .frame(width: 119, height: 119)
                            .background(Color(red: 47/255, green: 57/255, blue: 42/255))
                            .cornerRadius(15)
                            
                        }
                        Text("Scan")
                            .font(Font.custom("helvetica", size: 15))
                        
                    }
                    
                    Spacer()
                    VStack{
                        Button {
                            // Action here
                        } label: {
                            Image("qr-code-white2")
                                .foregroundStyle(Color.white)
                            
                        }
                        .frame(width: 119, height: 119)
                        .background(Color(red: 47/255, green: 57/255, blue: 42/255))
                        .cornerRadius(15)
                        Text("Gerar Qr")
                            .font(Font.custom("helvetica", size: 15))
                        
                    }
                    Spacer()
                }.padding(.top, 10)
                HStack{
                    Spacer()
                    VStack{
                        Button {
                            // Action here
                        } label: {
                            Image("key-chain-white3")
                                .foregroundStyle(Color.white)
                            
                        }
                        .frame(width: 119, height: 119)
                        .background(Color(red: 47/255, green: 57/255, blue: 42/255))
                        .cornerRadius(15)
                        Text("Gerar Chaves")
                            .font(Font.custom("helvetica", size: 15))
                        
                    }
                    
                    Spacer()
                    
                    VStack{
                        Button {
                            // Action here
                        } label: {
                            Image(systemName: "star")
                                .foregroundStyle(Color.white)
                                .font(Font.custom("helvetica", size: 32))
                            
                        }
                        .frame(width: 119, height: 119)
                        .background(Color(red: 47/255, green: 57/255, blue: 42/255))
                        .cornerRadius(15)
                        //.shadow(radius: 5)
                        Text("Favoritos")
                            .font(Font.custom("helvetica", size: 15))
                    }
                    Spacer()
                }
            }.padding(.top, 23.7)
            VStack{
                Continue_Button(destino: Payment(lastPage: PixAreaCodeView()))
            }
            .frame(width: 402 , height: 115)
            .background(Color(red: 20/255, green: 18/255, blue: 16/255))
            .clipShape(
                    UnevenRoundedRectangle(topLeadingRadius: 30, topTrailingRadius: 30)
                )
            
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}


#Preview {

    NavigationStack {
        PixAreaCodeView()
    }
    
}
