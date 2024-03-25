//
//  HeroSectionHeader.swift
//  MyTribe
//
//  Created by J. DeWeese on 3/22/24.
//

import SwiftUI

struct HeroSectionHeader: View {
    var body: some View {
        VStack {
            ZStack {
              
                VStack {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: UIScreen.main.bounds.width * 0.95, height: 90)
                            .foregroundStyle(.gray.opacity(0.40))
                            .overlay{
                                Image("nullProfile")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(Circle())
                                    .frame(width: 55, height: 55)
                                    .padding(.trailing, 260)
                            }
                        Text("Profile Details")
                            .fontDesign(.serif)
                            .fontWeight(.bold)
                            .padding(.horizontal)
                            .font(.title2)
                            .shadow(color:.black,radius: 1, x:1, y:1)
                        
                        HStack{
                            Spacer()
                            Image(systemName: "chevron.right")
                                .fontWeight(.bold)
                                .font(.title)
                                .foregroundStyle(.white)
                                .shadow(color: .black, radius: 1, x: 1, y: 1)
                                .padding(.horizontal)
                        }
                    }
                    .padding(.horizontal)
                    Spacer()
                    
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.95, height: 100)
    }
    
}

#Preview {
    HeroSectionHeader()
}
