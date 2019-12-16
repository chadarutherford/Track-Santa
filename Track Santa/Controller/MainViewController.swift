//
//  MainViewController.swift
//  Track Santa
//
//  Created by Chad Rutherford on 12/16/19.
//  Copyright © 2019 Chad Rutherford. All rights reserved.
//

import SwiftUI
import UIKit

class SantaTrackerViewController: UIViewController {
    
}

struct SantaTrackerPreview: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        func updateUIViewController(_ uiViewController: SantaTrackerPreview.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<SantaTrackerPreview.ContainerView>) {
            
        }
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<SantaTrackerPreview.ContainerView>) -> UIViewController {
            return SantaTrackerViewController()
        }
    }
}
