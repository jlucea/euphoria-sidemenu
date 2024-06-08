//
//  ContentView.swift
//  SideMenu
//
//  Created by Jaime Lucea on 8/6/24.
//

import SwiftUI

struct MenuContainerView: View {
    
    @State var isMenuOpen: Bool = false
    
    var body: some View {
        
        HStack (alignment: .top) {
            
            if isMenuOpen {
                SideMenuView()
            }
            
            VStack {
                Button(action: {
                    self.isMenuOpen.toggle()
                }, label: {
                    Image(systemName: "square.leftthird.inset.filled")
                        .resizable()
                        .foregroundColor(.black)
                        .frame(width: 24, height: 24)
                })
                
                Spacer()  // Push the button to the top
            }
            .padding(.vertical)
            .padding(.horizontal, isMenuOpen ? 5 : 25)
            
            Spacer()
        }
        
    }
}

#Preview {
    MenuContainerView()
}
