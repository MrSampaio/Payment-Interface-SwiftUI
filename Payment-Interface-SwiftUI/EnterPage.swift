import SwiftUI
import AVFoundation

struct EnterPage: View {
    @State private var isActive = false
    @State private var rotationDegrees = 0.0
    
    // Variável para controlar quando a Splash aparece para disparar a transição
    @State private var isShowingSplash = false
    
    @State var audioPlayer: AVAudioPlayer?

    var body: some View {
        ZStack {
            if isActive {
                LoginView()
                    .transition(.opacity) // Fade suave para a tela de login
            } else {
                // TELA DE SPLASH
                if isShowingSplash {
                    VStack {
                        Image("Logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .rotationEffect(.degrees(rotationDegrees)) // Animação de Giro
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                    
                    // DEFINE A TRANSIÇÃO DE ENTRADA PELA ESQUERDA
                    .transition(.move(edge: .top))
                    
                    .onAppear {

                        //playSound(sound: "uivo", type: "mp3")
                        
                        // 3. AGUARDA 3 SEGUNDOS E TROCA PARA A TELA DE LOGIN
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
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
    }
    
    func playSound(sound: String, type: String) {
            if let path = Bundle.main.path(forResource: sound, ofType: type) {
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                    audioPlayer?.play()
                } catch {
                    print("ERRO: Não foi possível tocar o som.")
                }
            }
        }
}

#Preview {
    NavigationStack{
        EnterPage()
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
