//
//  Camera.swift
//  Payment-Interface-SwiftUI
//
//  Created by JULIO SAMPAIO on 09/04/26.
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
        
        // camada de vídeo e ajusta para preencher o espaço
        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.frame = UIScreen.main.bounds
        previewLayer.videoGravity = .resizeAspectFill
        viewController.view.layer.addSublayer(previewLayer)
        
        // inicia a camera segundo plano para não travar o app
        DispatchQueue.global(qos: .userInitiated).async {
            captureSession.startRunning()
        }
        
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}

public struct RealCamera: View{
    
    var optionSelected: String
    
    public var body: some View {
        
        if(optionSelected == "PIX"){
            CameraPreviewView()
                .frame(width: 250, height: 250)
                .cornerRadius(20)
        } else if(optionSelected == "CODEBAR"){
            CameraPreviewView()
                .frame(width: 350, height: 100)
                .cornerRadius(20)
        }
    }
}
#Preview {
    RealCamera(optionSelected: "PIX")
}

