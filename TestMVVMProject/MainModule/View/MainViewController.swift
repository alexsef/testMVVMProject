//
//  ViewController.swift
//  TestMVVMProject
//
//  Created by Алексей Селиванов on 28.10.2020.
//  Copyright © 2020 Alexey Selivanov. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    private var viewModel: MainViewModelProtocol!
    private var testView: TestView!

    override func viewDidLoad() {
        // hardcore
        viewModel = MainViewModel()
        super.viewDidLoad()
        createView()
        updateView()
    }
    
    private func createView() {
        testView = TestView()
        testView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        testView.center = view.center
        view.addSubview(testView)
    }
    
    private func updateView() {
        viewModel.updateViewData = { [weak self] viewData in
            self?.testView.viewData = viewData
        }
    }

    @IBAction func startAction(_ sender: UIButton) {
        viewModel.startFetch()
    }
}

