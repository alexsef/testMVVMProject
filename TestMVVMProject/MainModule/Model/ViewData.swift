//
//  ViewData.swift
//  TestMVVMProject
//
//  Created by Алексей Селиванов on 28.10.2020.
//  Copyright © 2020 Alexey Selivanov. All rights reserved.
//

import Foundation

enum ViewData {
    case initial
    case loading(Data)
    case success(Data)
    case faillure(Data)
    
    struct Data {
        let icon: String?
        let title: String?
        let description: String?
        let numberPhone: String?
    }
}
