//
//  RotateBadgeSymbol.swift
//  Landmarks
//
//  Created by mk on 2019/10/20.
//  Copyright © 2019 mk. All rights reserved.
//

import SwiftUI

struct RotateBadgeSymbol: View {
    
    let angle: Angle
    
    var body: some View {
        
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotateBadgeSymbol_Previews: PreviewProvider {
    
    static var previews: some View {
        
        RotateBadgeSymbol(angle: .init(degrees: 5))
    }
}
