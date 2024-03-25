//
//  SettingsRowView.swift
//  MyTribe
//
//  Created by J. DeWeese on 3/22/24.
//

import SwiftUI

struct SettingsRowView: View {
    var systemName: String = ""
    var details: String = ""
    var navName: String = ""
    var body: some View {
        VStack {
            ZStack {
              
                VStack {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: UIScreen.main.bounds.width * 0.97, height: 40)
                            .foregroundStyle(.gray.opacity(0.4))
                            .overlay{
                                Image(systemName: systemName)
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .frame(width: 35, height: 35)
                                    .padding(.trailing, 260)
                                    .shadow(color: .black, radius: 0.5, x: 0.5, y: 0.5)
                            }
                        Text(details)
                            .fontDesign(.serif)
                            .font(.title2)
                            .fontWeight(.bold)
                            .shadow(color: .black, radius: 0.5, x: 0.5, y: 0.5)
                        HStack{
                            Spacer()
                            Image(systemName: navName)
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                                .shadow(color: .black, radius: 0.5, x: 0.5, y: 0.5)
                                .padding(.horizontal)
                        }
                    }
                    .padding(.horizontal)
                    Spacer()
                    
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.98, height: 35)
    }
    
}

#Preview {
    SettingsRowView()
}
