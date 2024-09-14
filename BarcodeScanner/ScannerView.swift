//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by Mohamed Mostafa on 14/09/2024.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    final class Coordinator: NSObject, ScannerVCDelegate{
        func didFind(barecode: String) {
            print(barecode)
        }
        
        func didSurface(error: CameraError) {
            print(error.rawValue)
        }
        
        
    }
    
}

#Preview {
    ScannerView()
}
