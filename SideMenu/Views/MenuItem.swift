//
//  SideMenuItem.swift
//  SideMenu
//
//  Created by Jaime Lucea on 8/6/24.
//

import SwiftUI

struct MenuItem: View {
    
    let label: String
    let icon: Image
    
    private let iconWidth: CGFloat = 16
    private let iconHeight: CGFloat = 16
    
    init(icon: Image, label: String) {
        self.icon = icon
        self.label = label
    }
    
    init(iconName: String, label: String) {
        self.icon = Image(systemName: iconName)
        self.label = label
    }
    
    var body: some View {
        HStack {
            icon
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: iconWidth, height: iconHeight)
            
            Text(label)
                .font(.system(size: 18, weight: .regular, design: .rounded))
                .padding(.leading, 10)
        }
    }
}

#Preview {
    MenuItem(iconName: "person", label: "Profile")
}
