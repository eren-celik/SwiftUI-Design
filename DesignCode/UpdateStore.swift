//
//  UpdateStore.swift
//  DesignCode
//
//  Created by Eren  Çelik on 16.01.2021.
//

import Foundation
import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
}
