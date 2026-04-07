import SwiftUI

struct HomeView: View {
    @State private var saldo = ""
    
    var body: some View {
        
        VStack(spacing: 40) {
            
            // --- HEADER ---
            HStack {
                Image("menu 1")
                    .resizable() // Importante para controlar o tamanho real
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                
                Spacer()
                
                Image("user")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 60, maxHeight: 60)
            }
            .padding(.horizontal, 30)
            .padding(.top, 20) // Espaço extra no topo da tela

            // --- CARTÃO DE SALDO ---
            VStack(alignment: .leading, spacing: 15) { // Spacing interno do cartão
                Text("Carteira digital")
                    .font(.custom("Helvetica", size: 24))
                    .foregroundColor(Color.verdeTitulo)
                    .fontWeight(.bold)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Saldo total")
                        .foregroundColor(.black)
                        .fontWeight(.thin)
                    
                    HStack {
                        Text("R$ 335,05")
                            .font(.custom("Helvetica", size: 36))
                            .bold()
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Image("eye")
                                .frame(width: 32, height: 32)
                        }
                    }
                }
            }
            .padding(25)
            .frame(maxWidth: 350, minHeight: 180)
            .background(Color.fundoCartao)
            .cornerRadius(25)
 
            

            VStack(spacing: 20) {
                
                // botao pagar
                ZStack(alignment: .bottom){
                    
                    HStack{

                    }   .frame(maxWidth: 350, maxHeight: 30)
                        .background(
                                Ellipse() // Forma oval
                                    .fill(Color.black)
                                    
                            )
 
                    
                    Button(action: {}){
                        HStack{
                            Text("Pagar")
                                .foregroundColor(Color.white)
                            
                            Image("barcode")
                        }
                    }
   
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(maxWidth: 285, maxHeight: 10)
                        .padding()
                        .background(

                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.cartaoIndex01)
                                .padding(.bottom, -15)
                        )
                                
                                .clipped()
                        .padding(.bottom, 10)
                    
                    
                    
   
                    
                } .padding(.top, 50)
                
                //botao pix
                ZStack(alignment: .bottom){
                    
                    HStack{

                    }   .frame(maxWidth: 350, maxHeight: 30)
                        .background(
                                Ellipse()
                                    .fill(Color.black)
                                    
                        )
 
                    
                    Button(action: {}){
                        HStack{
                            Text("Área Pix")
                                .foregroundColor(Color.white)
                            
                            Image("pix")
                        }
                    }
   
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(maxWidth: 285, maxHeight: 10)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.cartaoIndex02)
                                
                                .padding(.bottom, -15)
                        )
                        
                        .clipped()
                        .padding(.bottom, 10)
                } .padding(.top, 15)
                
                //botao cartoes
                ZStack(alignment: .bottom){
                    
                    HStack{

                    }   .frame(maxWidth: 350, maxHeight: 30)
                        .background(
                                Ellipse()
                                    .fill(Color.black)
                                    
                            )
 
                    
                    Button(action: {}){
                        HStack{
                            Text("Cartões")
                                .foregroundColor(Color.white)
                            
                            Image("creditCard")
                        }
                    }
   
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(maxWidth: 285, maxHeight: 10)
                        .padding()
                        .background(

                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.cartaoIndex03)
                                .padding(.bottom, -15)
                        )
                               
                        .clipped()
                        .padding(.bottom, 10)
                } .padding(.top, 15)
                
                //botao Extrato
                ZStack(alignment: .bottom){
                    
                    HStack{

                    }   .frame(maxWidth: 350, maxHeight: 30)
                        .background(
                                Ellipse()
                                    .fill(Color.black)
                                    
                            )
 
                    
                    Button(action: {}){
                        HStack{
                            Text("Extrato")
                                .foregroundColor(Color.white)
                            
                            Image("receipt")
                        }
                    }
   
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(maxWidth: 285, maxHeight: 10)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.cartaoIndex04)
                                .padding(.bottom, -15)
                        )
                                
                        .clipped()
                        .padding(.bottom, 10)
                } .padding(.top, 15)

                
                
                Spacer()
                
            }
            
            
            .frame(maxWidth: .infinity)
            .background(
                UnevenRoundedRectangle(
                topLeadingRadius: 0,
                bottomLeadingRadius: 0,
                bottomTrailingRadius: 0,
                topTrailingRadius: 0
            )
            .fill(Color.cinzaCarteiraIndex)
            .shadow(color: Color.green.opacity(0.5), radius: 10, x: 0, y: -10)
                
                
        )
            
            .overlay(alignment: .bottom) {
                HStack(spacing: 40) {
                    Button(action: {}) {
                        Image("home")
                        
                    }
                    .frame(width: 40, height: 40)
                    .background(.verdeClaro)
                        .cornerRadius(100)
                        
                    
                    Button(action: {}) {
   
                        
                        Image("investir")
                        
                    }
                    
                    Button(action: {}) {
                        Image("compra")
                    }
                    
                }
                .padding(.vertical, 15)
                .padding(.horizontal, 30)
                .background(
                    Capsule()
                        .fill(Color.cinzaMenu)
                )
                .padding(.bottom, 20)

            }

        }

        .edgesIgnoringSafeArea(.bottom) // Faz o fundo cinza ir até o final
    }
}

#Preview{

    HomeView()

}
