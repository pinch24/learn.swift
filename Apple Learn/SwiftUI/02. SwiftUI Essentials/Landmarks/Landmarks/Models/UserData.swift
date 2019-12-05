//
//  UserData.swift
//  Landmarks
//
//  Created by mk on 2019/10/12.
//  Copyright © 2019 mk. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}
