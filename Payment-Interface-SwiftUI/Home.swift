import SwiftUI

struct HomeView: View {
    @State private var controleViewDinheiro = true
    
    @State private var irParaPagar = false
    @State private var animarPagar = false
    
    @State private var irParaPix = false
    @State private var animarPix = false
    
    var body: some View {
        
        NavigationStack {
            VStack(spacing: 40) {
                
                // --- HEADER ---
                HStack {
                    Image("menu 1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                    
                    Spacer()
                    
                    Image("user")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 55, height: 55)
                }
                .padding(.horizontal, 30)
                .padding(.top, 50)

                // --- CARTÃO DE SALDO ---
                VStack(alignment: .leading, spacing: 15) {
                    Text("Carteira digital")
                        .font(.custom("Helvetica", size: 24))
                        .foregroundColor(Color.verdeTitulo)
                        .fontWeight(.bold)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Saldo total")
                            .foregroundColor(.black)
                            .fontWeight(.thin)
                        
                        HStack {
                            Text(controleViewDinheiro ? "R$ 335,05" : "-")
                                .font(.custom("Helvetica", size: 36))
                                .bold()
                            
                            Spacer()
                            
                            Button(action: {
                                controleViewDinheiro.toggle()
                            }) {
                                Image(controleViewDinheiro ? "eye" : "closed-eye")
                            }
                            .frame(maxWidth: 32, maxHeight: 32)
                        }
                    }
                }
                .padding(25)
                .frame(maxWidth: 350, minHeight: 180)
                .background(Color.fundoCartao)
                .cornerRadius(25)
 
                VStack(spacing: 20) {

                    // --- BOTAO PAGAR---
                    ZStack(alignment: .bottom){
                        HStack{ }
                            .frame(maxWidth: 350, maxHeight: 30)
                            .background(
                                Ellipse()
                                    .fill(Color.black)
                            )
 
                        Button(action: {
                            // animacao
                            withAnimation(.spring(response: 0.35, dampingFraction: 0.7)) {
                                animarPagar = true
                            }
                            
                            // tempo de espera
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                irParaPagar = true
                                
                                // Reseta a animação em segundo plano para quando o usuário voltar
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    animarPagar = false
                                }
                            }
                        }){
                            HStack{
                                Text("Pagar").foregroundColor(Color.white)
                                Image("barcode")
                            }
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(maxWidth: 285)
                            .frame(height: (animarPagar ? 100 : 10))
                            
                            
                            .padding(.horizontal, 16)
                            .padding(.vertical, 16)
                            
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color.cartaoIndex01)
                                    
                                    .padding(.bottom, (animarPagar ? 0 : -30))
                            )
                            .clipped() // Mantém o corte
                            .padding(.bottom, 10)
                            
                           
                            .offset(y: animarPagar ? -50 : 0)
                        }
                        .buttonStyle(PlainButtonStyle())
                        .navigationDestination(isPresented: $irParaPagar) {
                            Payment()
                        }
                    } .padding(.top, 50)
                    
                    
                    // --- BOTAO PAGAR---
                    ZStack(alignment: .bottom){
                        HStack{ }
                            .frame(maxWidth: 350, maxHeight: 30)
                            .background(
                                Ellipse()
                                    .fill(Color.black)
                            )
 
                        Button(action: {
                            // animacao
                            withAnimation(.spring(response: 0.35, dampingFraction: 0.7)) {
                                animarPix = true
                            }
                            
                            // tempo de espera
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                irParaPix = true
                                
                                // Reseta a animação em segundo plano para quando o usuário voltar
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    animarPix = false
                                }
                            }
                        }){
                            HStack{
                                Text("Área Pix").foregroundColor(Color.white)
                                Image("pix")
                            }
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(maxWidth: 285)
                            .frame(height: (animarPix ? 100 : 10))
                            
                            
                            .padding(.horizontal, 16)
                            .padding(.vertical, 16)
                            
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color.cartaoIndex02)
                                    // Aumentamos o padding negativo para o cartão parecer "inserido"
                                    .padding(.bottom, (animarPix ? 0 : -30))
                            )
                            .clipped() // Mantém o corte
                            .padding(.bottom, 10)

                            .offset(y: animarPix ? -50 : 0) // Desliza 30 pontos para cima
                        }
                        .buttonStyle(PlainButtonStyle())
                        .navigationDestination(isPresented: $irParaPix ) {
                            PixAreaCodeView()
                        }
                        
                        
                    } .padding(.top, 15)
                    
                    
                    // --- CARTÃO CARTOES (Sem animação, para você copiar a lógica se quiser depois) ---
                    ZStack(alignment: .bottom){
                        HStack{ }
                            .frame(maxWidth: 350, maxHeight: 30)
                            .background(Ellipse().fill(Color.black))
                    
                        Button(action: {}){
                            HStack{
                                Text("Cartões").foregroundColor(Color.white)
                                Image("creditCard")
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
                        }
                    } .padding(.top, 15)
                    
                    // --- CARTÃO EXTRATO ---
                    ZStack(alignment: .bottom){
                        HStack{ }
                            .frame(maxWidth: 350, maxHeight: 30)
                            .background(Ellipse().fill(Color.black))
 
                        Button(action: {}){
                            HStack{
                                Text("Extrato").foregroundColor(Color.white)
                                Image("receipt")
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
                        }
                    } .padding(.top, 15)
                    
                    
                    // --- MENU INFERIOR ---
                    HStack{
                        HStack(spacing: 30) {
                            Button(action: {}) { Image("home").frame(width: 25, height: 25) }
                            .frame(width: 50, height: 50)
                            .background(.verdeClaro)
                            .cornerRadius(100)
                                
                            Button(action: {}){
                                VStack(spacing: -10){
                                    Image("investir").frame(width: 38, height: 46)
                                    Text("Investir")
                                }
                            }
                            
                            Button(action: {}){
                                VStack(spacing: 3){
                                    Image("compra").frame(width: 25, height: 25)
                                    Text("Comprar")
                                }
                            } .padding(.top, 9)
                        }
                        .frame(width: 260, height: 50)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 10)
                        .background(Capsule().fill(Color.cinzaMenu))
                        .padding(.bottom, 20)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 150)
                    .background(
                        UnevenRoundedRectangle(topLeadingRadius: 30, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 30)
                            .fill(Color.cinzaFundoBotoes)
                    )
                }
                .frame(maxWidth: .infinity)
                .frame(height: 510)
                .background(
                    UnevenRoundedRectangle(topLeadingRadius: 30, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 30)
                        .fill(Color.cinzaCarteiraIndex)
                )

            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

#Preview{
    HomeView()
}
