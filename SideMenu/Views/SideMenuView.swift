//
//  SideMenuView.swift
//  SideMenu
//
//  Created by Jaime Lucea on 8/6/24.
//

import SwiftUI

public struct SideMenuView: View {
    
    static let menuWidth = UIScreen.main.bounds.width - 60
    
    public var body: some View {
        
        VStack (alignment: .leading) {
            
            MenuItems()
                .foregroundStyle(Color.white)
                .padding(.vertical, 40)
                        
            Divider()
                .background(Color.gray)
                .padding(.top, 10)

        }
        .padding(.horizontal, 30)
        .frame(width: SideMenuView.menuWidth, alignment: .leading)
        .frame(maxHeight: .infinity, alignment: .top)
        .background(Color.black)
    }
        
}

#Preview {
    HStack {
        SideMenuView()
        Spacer()
    }
}
