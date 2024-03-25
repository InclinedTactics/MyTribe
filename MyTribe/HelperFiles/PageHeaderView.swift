//
//  PageHeaderView.swift
//  MyTribe
//
//  Created by J. DeWeese on 3/22/24.
//

import SwiftUI

struct PageHeaderView: View {
    var pageName = ""
    var systemName = ""
    var imageName = ""
    
    var body: some View {
        VStack {
            ZStack {
                Color.black.opacity(0.1)
                    .ignoresSafeArea()
                    VStack{
                    
                    VStack{
                        HStack{
                            Image(systemName: systemName)
                                .foregroundStyle(.primary)
                            Spacer()
                            Text(pageName)
                                .foregroundStyle(.primary)
                                .fontDesign(.serif)
                                .font(.system(size: 25))
                                .fontWeight(.bold)
                            Spacer()
                            Image(imageName)
                                .resizable()
                                .frame(width: 42, height: 42)
                                .clipShape(Circle())
                            
                        }
                        .padding(.horizontal)
                        HStack{
                            Text("Vision")
                                .foregroundStyle(.primary)
                                .fontDesign(.serif)
                                .fontWeight(.semibold)
                                .font(.title3)
                            Text("Discipline")
                                .foregroundStyle(.secondary)
                                .fontDesign(.serif)
                                .fontWeight(.semibold)
                                .font(.callout)
                        }
                    }.frame(width: UIScreen.main.bounds.width * 0.95, height: 80)
                 
                }
                    
            }
        }
    }
}

#Preview {
    PageHeaderView()
}
