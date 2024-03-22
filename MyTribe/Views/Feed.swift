//
//  Feed.swift
//  MyTribe
//
//  Created by J. DeWeese on 3/21/24.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ZStack {
            Color.black.opacity(0.1)
                .ignoresSafeArea()
            
            ZStack{
                ScrollView{
                    LazyVStack{
                        VStack{
                            ZStack{
                                VStack(alignment: .leading){
                                    Image("boys")
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(RoundedRectangle(cornerRadius: 12))
                                    
                                }
                                
                                    
                                    HStack{
                                        RoundedRectangle(cornerRadius: 10.0)
                                            .foregroundStyle(.blue)
                                            .frame(width: 30, height: 30)
                                            .overlay {
                                                Image("nullProfile")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .clipShape(Circle())
                                                    .padding(3)
                                                Spacer()
                                            }
                                            .shadow(color: .gray, radius: 2, x:2, y: 2)
                                            .padding(.leading)
                                        Spacer()
                                    }
                                    .offset(x: -68, y: -65)
                                    .padding(.horizontal)
                                    Spacer()
                               
                            }
                            .padding(.top, 20)
                            Spacer()
                        }
                    }
                    .frame(width: 110)
                    
                    VStack{
                        Text("Add a caption...")
                            .foregroundStyle(.primary)
                            .fontWeight(.semibold)
                            .fontDesign(.serif)
                        Text("View Comments")
                            .fontDesign(.serif)
                            .foregroundStyle(.secondary)
                        
                    }
                    ForEach(1..<10) { _ in
                        FeedCell()
                    }
                }
                .padding(.top, 80)
            }
            
            
            VStack{
                
                VStack{
                    HStack{
                        Image(systemName: "person.3")
                            .foregroundStyle(.primary)
                        Spacer()
                        Text("Tribal.")
                            .foregroundStyle(.primary)
                            .fontDesign(.serif)
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                        Spacer()
                        Image("nullProfile")
                            .resizable()
                            .frame(width: 42, height: 42)
                            .clipShape(Circle())
                        
                    }
                    .padding(.horizontal)
                    HStack{
                        Text("Members")
                            .foregroundStyle(.primary)
                            .fontDesign(.serif)
                            .fontWeight(.semibold)
                            .font(.title3)
                        Text("Discovery")
                            .foregroundStyle(.secondary)
                            .fontDesign(.serif)
                            .fontWeight(.semibold)
                            .font(.callout)
                    }
                }
                Spacer()
            }
        }
    }
}
#Preview {
    Feed()
}
