//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by Mohamed Mostafa on 14/09/2024.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    
    @Binding var scannedCode: String
    
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(scannerView: self)
    }
    
    final class Coordinator: NSObject, ScannerVCDelegate{
        
        private let scannerView: ScannerView
        
        func didFind(barecode: String) {
            scannerView.scannedCode = barecode
        }
        
        func didSurface(error: CameraError) {
            print(error.rawValue)
        }
        
        init(scannerView: ScannerView) {
            self.scannerView = scannerView
        }
    }
    
}

#Preview {
    ScannerView(scannedCode: .constant(""))
}
