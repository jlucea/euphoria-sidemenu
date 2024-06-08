//
//  ContentView.swift
//  SideMenu
//
//  Created by Jaime Lucea on 8/6/24.
//

import SwiftUI

struct SideMenuContainerView: View {
    
    // State to track if the side menu is open or closed
    @State var isMenuOpen: Bool = false
    
    var body: some View {
        
        HStack () {
            
            if isMenuOpen {
                SideMenuView()
                    .transition(.move(edge: .leading))
            }
            
            VStack {
                Button(action: {
                    // Animate the button action
                    withAnimation {
                        // Toggle the state of isMenuOpen
                        self.isMenuOpen.toggle()
                    }
                }, label: {
                    Image(systemName: "square.leftthird.inset.filled")
                        .resizable()
                        .foregroundColor(.black)
                        .frame(width: 28, height: 28)
                })
            }
            .padding(.vertical)
            .padding(.horizontal, isMenuOpen ? 5 : 25)
            
            // Push the HStack content to the left
            Spacer()
        }
        .animation(.default, value: isMenuOpen)
    }
}

#Preview {
    SideMenuContainerView()
}
