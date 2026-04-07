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
                    .frame(width: 55, height: 55)
            }
            .padding(.horizontal, 30)
            .padding(.top, 20)

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
                    
                    
                    
   
                    
                } .padding(.top, 80)
                
                //botao pix
                ZStack(alignment: .bottom){
                    
                    HStack{

                    }   .frame(maxWidth: 350, maxHeight: 30)
                        .background(
                            Ellipse()
                                .fill(Color.black)
                        )
 
                    
                    Button(action: {
                       
                    }){
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
                
                HStack{
                    HStack(spacing: 30) {
                        Button(action: {}) {
                            Image("home")
                                .frame(width: 25, height: 25)
                        }
                        .frame(width: 50, height: 50)
                        .background(.verdeClaro)
                        .cornerRadius(100)
                            

                        Button(action: {}){
       
                            VStack(spacing: -10){
                                Image("investir")
                                    .frame(width: 38, height: 46)
                                Text("Investir")
                            }
                            
                        }
                        
                        Button(action: {}){

                            VStack(spacing: 3){
                                Image("compra")
                                    .frame(width: 25, height: 25)
                                Text("Comprar")
                            }
                            
                        } .padding(.top, 9)
                        
                    }
                    .frame(width: 260, height: 50)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 30)
                    .background(
                        Capsule()
                            .fill(Color.cinzaMenu)
                    )
                    .padding(.bottom, 40)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 150)
                .background(
                    UnevenRoundedRectangle(
                    topLeadingRadius: 30,
                    bottomLeadingRadius: 0,
                    bottomTrailingRadius: 0,
                    topTrailingRadius: 30
                )
                    .fill(Color.cinzaFundoBotoes)
                )
   
                
            }
            
            
            .frame(maxWidth: .infinity)
            .frame(height: 550)
            .background(
                UnevenRoundedRectangle(
                topLeadingRadius: 30,
                bottomLeadingRadius: 0,
                bottomTrailingRadius: 0,
                topTrailingRadius: 30
            )
            .fill(Color.cinzaCarteiraIndex)
            
            .edgesIgnoringSafeArea(.bottom)
                
                
        )

            }

        .edgesIgnoringSafeArea(.bottom) // Faz o fundo cinza ir até o final
    }
}

#Preview{
    HomeView()

}
