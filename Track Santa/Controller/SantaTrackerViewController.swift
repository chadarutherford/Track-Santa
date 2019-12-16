//
//  SantaTrackerViewController.swift
//  Track Santa
//
//  Created by Chad Rutherford on 12/16/19.
//  Copyright © 2019 Chad Rutherford. All rights reserved.
//

import UIKit
import MapKit

class SantaTrackerViewController: UIViewController {
    
    let headerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let timeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5:27:31"
        label.textAlignment = .center
        label.font = UIFont(name: "AvenirNext-Regular", size: 20.0)
        label.textColor = UIColor(r: 22, g: 26, b: 48)
        return label
    }()
    let santaText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "until Santa arrives"
        label.font = UIFont(name: "AvenirNext-Regular", size: 12.0)
        label.textColor = UIColor(r: 136, g: 137, b: 149)
        return label
    }()
    let mapView: MKMapView = {
        let mapView = MKMapView()
        mapView.translatesAutoresizingMaskIntoConstraints = false
        return mapView
    }()
    let footerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let leftFooterView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let santaTemp: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "76"
        label.font = UIFont(name: "AvenirNext-Medium", size: 50.0)
        label.textColor = UIColor(r: 70, g: 65, b: 140)
        return label
    }()
    let tempImage: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "sun")
        return iv
    }()
    let localTempText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = "Santa's Local\n Temperature"
        label.font = UIFont(name: "AvenirNext-Medium", size: 10.0)
        label.textColor = UIColor(r: 136, g: 137, b: 149)
        return label
    }()
    let rightFooterView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let presentsText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "142"
        label.font = UIFont(name: "AvenirNext-Medium", size: 50.0)
        label.textColor = UIColor(r: 236, g: 53, b: 127)
        return label
    }()
    let giftImage: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "present")
        return iv
    }()
    let presentsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = "Presents to\n Deliver"
        label.font = UIFont(name: "AvenirNext-Medium", size: 10.0)
        label.textColor = UIColor(r: 136, g: 137, b: 149)
        return label
    }()
    let santaMapView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .darkGray
        return view
    }()
    let santaIsLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "🎅🏽 Santa is waiting for Christmas"
        label.font = UIFont(name: "AvenirNext-Regular", size: 20.0)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeader()
        setupMapView()
        setupFooter()
    }
    
    private func setupHeader() {
        view.backgroundColor = .white
        view.addSubview(headerView)
        headerView.addSubview(timeLabel)
        headerView.addSubview(santaText)
        
        
        NSLayoutConstraint.activate([
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            timeLabel.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            timeLabel.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 8),
            santaText.topAnchor.constraint(equalTo: timeLabel.bottomAnchor),
            santaText.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            santaText.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -8)
        ])
    }
    
    private func setupMapView() {
        view.addSubview(mapView)
        view.addSubview(santaMapView)
        santaMapView.addSubview(santaIsLabel)
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            santaMapView.topAnchor.constraint(equalTo: mapView.bottomAnchor),
            santaMapView.leadingAnchor.constraint(equalTo: mapView.leadingAnchor),
            santaMapView.trailingAnchor.constraint(equalTo: mapView.trailingAnchor),
            santaIsLabel.centerXAnchor.constraint(equalTo: santaMapView.centerXAnchor),
            santaIsLabel.topAnchor.constraint(equalTo: santaMapView.topAnchor, constant: 4),
            santaIsLabel.bottomAnchor.constraint(equalTo: santaMapView.bottomAnchor, constant: -4)
        ])
    }
    
    private func setupFooter() {
        view.addSubview(footerView)
        NSLayoutConstraint.activate([
            
            footerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            footerView.topAnchor.constraint(equalTo: santaMapView.bottomAnchor),
            footerView.trailingAnchor.constraint(equalTo: view.trailingAnchor), footerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
        
        footerView.addSubview(leftFooterView)
        leftFooterView.addSubview(santaTemp)
        leftFooterView.addSubview(tempImage)
        leftFooterView.addSubview(localTempText)
        NSLayoutConstraint.activate([
            leftFooterView.leadingAnchor.constraint(equalTo: footerView.leadingAnchor),
            leftFooterView.topAnchor.constraint(equalTo: footerView.topAnchor),
            leftFooterView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            leftFooterView.bottomAnchor.constraint(equalTo: footerView.bottomAnchor),
            santaTemp.centerXAnchor.constraint(equalTo: leftFooterView.centerXAnchor),
            santaTemp.topAnchor.constraint(equalTo: leftFooterView.topAnchor),
            tempImage.leadingAnchor.constraint(equalTo: leftFooterView.leadingAnchor, constant: 16),
            tempImage.topAnchor.constraint(equalTo: santaTemp.bottomAnchor, constant: 8),
            tempImage.bottomAnchor.constraint(equalTo: leftFooterView.bottomAnchor, constant: -16),
            tempImage.heightAnchor.constraint(equalToConstant: 32),
            tempImage.widthAnchor.constraint(equalTo: tempImage.heightAnchor, multiplier: 1),
            localTempText.leadingAnchor.constraint(equalTo: tempImage.trailingAnchor, constant: 8),
            localTempText.topAnchor.constraint(equalTo: santaTemp.bottomAnchor, constant: 8),
            localTempText.trailingAnchor.constraint(equalTo: leftFooterView.trailingAnchor, constant: -8),
            localTempText.bottomAnchor.constraint(equalTo: leftFooterView.bottomAnchor, constant: -16)
        ])
        
        footerView.addSubview(rightFooterView)
        rightFooterView.addSubview(presentsText)
        rightFooterView.addSubview(giftImage)
        rightFooterView.addSubview(presentsLabel)
        NSLayoutConstraint.activate([
            rightFooterView.leadingAnchor.constraint(equalTo: leftFooterView.trailingAnchor),
            rightFooterView.topAnchor.constraint(equalTo: footerView.topAnchor),
            rightFooterView.trailingAnchor.constraint(equalTo: footerView.trailingAnchor),
            rightFooterView.bottomAnchor.constraint(equalTo: footerView.bottomAnchor),
            presentsText.centerXAnchor.constraint(equalTo: rightFooterView.centerXAnchor),
            presentsText.topAnchor.constraint(equalTo: rightFooterView.topAnchor),
            giftImage.leadingAnchor.constraint(equalTo: rightFooterView.leadingAnchor, constant: 16),
            giftImage.topAnchor.constraint(equalTo: presentsText.bottomAnchor, constant: 8),
            giftImage.bottomAnchor.constraint(equalTo: rightFooterView.bottomAnchor, constant: -16),
            giftImage.heightAnchor.constraint(equalToConstant: 32),
            giftImage.widthAnchor.constraint(equalTo: giftImage.heightAnchor, multiplier: 1),
            presentsLabel.leadingAnchor.constraint(equalTo: giftImage.trailingAnchor, constant: 8),
            presentsLabel.topAnchor.constraint(equalTo: presentsText.bottomAnchor, constant: 8),
            presentsLabel.trailingAnchor.constraint(equalTo: rightFooterView.trailingAnchor, constant: -8),
            presentsLabel.bottomAnchor.constraint(equalTo: rightFooterView.bottomAnchor, constant: -16)
        ])
    }
}

extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r / 255, green: g / 255, blue: b / 255, alpha: 1)
    }
}
