//
//  ViewController.swift
//  NeonAcademyProgressView
//
//  Created by Kerem Caan on 1.08.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let progressView: UIProgressView = UIProgressView()
    let button: UIButton = UIButton()
    var value = 0.1

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    func configureUI() {
        
        view.addSubview(button)
        button.setTitle("Count", for: .normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(250)
            make.centerX.equalToSuperview()
            make.width.equalTo(80)
        }
        
        view.addSubview(progressView)
        progressView.trackTintColor = .black
        progressView.progressTintColor = .blue
        progressView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(150)
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
        }
    }
    
    @objc func buttonPressed() {
        if value < 1 {
            value += 0.1
            progressView.progress = Float(value)
        } else {
            value = 0
            progressView.progress = 0
        }
    }

}

