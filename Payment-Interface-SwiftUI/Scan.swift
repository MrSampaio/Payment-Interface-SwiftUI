//
//  Untitled.swift
//  Payment-Interface-SwiftUI
//
//  Created by PAULO EDUARDO BARBOSA DA SILVA on 02/04/26.
//

import SwiftUI
import AVFoundation

// --- COMPONENTE QUE LIGA A CÂMERA ---
struct CameraPreviewView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        let viewController = UIViewController()
        let captureSession = AVCaptureSession()
        
        // Tenta acessar a câmera traseira do dispositivo
        guard let videoCaptureDevice = AVCaptureDevice.default(for: .video) else { return viewController }
        let videoInput: AVCaptureDeviceInput
        
        do {
            videoInput = try AVCaptureDeviceInput(device: videoCaptureDevice)
        } catch {
            return viewController
        }
        
        if (captureSession.canAddInput(videoInput)) {
            captureSession.addInput(videoInput)
        } else {
            return viewController
        }
        
        // Cria a camada de vídeo e ajusta para preencher o espaço
        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.frame = UIScreen.main.bounds
        previewLayer.videoGravity = .resizeAspectFill
        viewController.view.layer.addSublayer(previewLayer)
        
        // Inicia a câmera em segundo plano para não travar o app
        DispatchQueue.global(qos: .userInitiated).async {
            captureSession.startRunning()
        }
        
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}


struct ScanView: View {
    @State var pixSelected: Bool = true
    @State var pixKey: String = ""

    
    var body: some View {
        Spacer()
        VStack{
            HStack{
                Spacer()
                Button{
                    
                }label: {
                    Text("PIX")
                }.frame(width: 100, height: 29)
                .background(Color(red: 87/255, green: 115/255, blue: 86/255))
                    .cornerRadius(30)
                    
                Spacer()
                Button{
                    
                }label: {
                    Text("COD.BAR")
                }
                Spacer()
            }.frame(width: 210, height: 39)
                .foregroundStyle(Color.white)
                .background(Color(Color(red: 47/255, green: 57/255, blue: 42/255)))
                .cornerRadius(30)
            
            VStack{
                Spacer()
                Text("Escanear Qr Code")
                    .bold()
                    .font(Font.custom("helvetica", size: 22))
                    .foregroundColor(Color(red: 47/255, green: 57/255, blue: 42/255))
                
                #if targetEnvironment(simulator)
                
                // mostra uma câmera falsa se for simulado
                Rectangle()
                    .fill(Color(.cinzaMenu))
                    .overlay(
                        Image(systemName: "camera.viewfinder")
                            .font(.system(size: 60))
                            .foregroundColor(.white.opacity(0.3))
                    )
                    .frame(width: 250, height: 250)
                    .cornerRadius(20)
                #else
                // se for iphone fisico, exibe a camera real
                CameraPreviewView()
                    .frame(width: 250, height: 250)
                    .cornerRadius(20)
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
    ScanView()
}
