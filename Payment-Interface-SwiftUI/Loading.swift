//  Loading.swift
//  Payment-Interface-SwiftUI
//
import SwiftUI

struct Loading: View {
    
    @State  var isActive = false
    @State  var rotationDegrees = 0.0
    
    // Variável para controlar quando a Splash aparece para disparar a transição
    @State  var isShowingSplash = false

    var body: some View {
            ZStack {
                Color(.systemBackground)
                if isActive {
                    Payment_Confirmed()
                        .transition(.opacity) // Fade suave para a tela de login
                } else {
                    // TELA DE SPLASH
                    if isShowingSplash {
                        VStack(spacing: 30){
                            Image("Logo")
                            ProgressView()
                                .progressViewStyle(CircularProgressViewStyle(tint: Color.verdeEscuro))
                            
                            Text("Wolf Bank está processando o pagamento...")
                                .foregroundStyle(Color.cartaoIndex04)
                                .font(.custom("HelveticaNeue-Bold", size: 14))
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                      
                        
                        // DEFINE A TRANSIÇÃO DE ENTRADA PELA ESQUERDA
                        .transition(.move(edge: .bottom))
                        
                        .onAppear {
                            
                            
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    self.isActive = true
                                }
                            }
                        }
                    }
                }
            }
            .onAppear {
                // DISPARA A TRANSIÇÃO DE ENTRADA ASSIM QUE A ROOTVIEW APARECE
                withAnimation(.easeOut(duration: 0.8)) {
                    isShowingSplash = true
                }
            }
        
            .navigationBarBackButtonHidden(true)
        }
    }



#Preview {
    NavigationStack{
        Loading()
        
    }
    
}

// LOBO GIRANDO



//VStack {
//                Image("meu_logo_svg") // Nome do arquivo no seu Assets
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 150, height: 150)
//                    .rotationEffect(.degrees(rotationDegrees)) // Aplica a rotação
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.white) // Cor de fundo da splash
//            .onAppear {
//                // 1. Inicia a animação de rotação
//                withAnimation(.linear(duration: 1.0).repeatForever(autoreverses: false)) {
//                    rotationDegrees = 360
//                }
//
//                // 2. Aguarda 3 segundos e muda para a tela de login
//                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
//                    withAnimation {
//                        self.isActive = true
//                    }
//                }
//            }

