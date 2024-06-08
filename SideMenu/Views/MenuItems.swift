//
//  MenuItems.swift
//  SideMenu
//
//  Created by Jaime Lucea on 8/6/24.
//

import SwiftUI

struct MenuItems: View {
    
    var body: some View {
        VStack (alignment: .leading, spacing: 30) {
            MenuItem(iconName: "person", label: "Profile")
            MenuItem(iconName: "heart", label: "Health")
            MenuItem(iconName: "cart", label: "Store")
            MenuItem(iconName: "moon.stars", label: "Dreams")
            MenuItem(iconName: "arcade.stick", label: "Arcade")
            MenuItem(iconName: "graduationcap", label: "Learning")
        }
    }
    
}

#Preview {
    MenuItems()
}
