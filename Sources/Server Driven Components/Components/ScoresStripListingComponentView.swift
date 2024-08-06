//
//  SwiftUIView.swift
//  
//
//  Created by Nausheen Khan on 03/08/24.
//

import SwiftUI

struct ScoresStripListingComponentView: View, UIComponent {
    
    let id = UUID()
    
    @StateObject private var scoresStripViewModel: ScoresStripListingViewModel
    let uiModel: ScoresStripListingUIModel
    
    public init(uiModel: ScoresStripListingUIModel) {
        self.uiModel = uiModel
        _scoresStripViewModel = StateObject(wrappedValue: ScoresStripListingViewModel(url: uiModel.fixturesUrl))
    }
    
    public var uniqueId: String {
        return ComponentType.scorestrip.rawValue
    }
    
    func render() -> AnyView {
        getScoresStripListStyle()
        .onAppear {
            Task {
                await scoresStripViewModel.getMatchListingData()
            }
        }
        .toAnyView()
    }
    
    private var ScoresStripVerticalListView: some View {
        LazyVStack {
            ForEach(scoresStripViewModel.matchListingScoresData, id: \.matchId) { scoreDetail in
                getScoresStrip(data: scoreDetail)
            }
        }
        .padding(.horizontal, CGFloat(uiModel.styles?.horizontalPadding ?? .zero))
    }
    
    private var ScoresStripHorizontalListView: some View {
        VStack {
            Spacer()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(scoresStripViewModel.matchListingScoresData, id: \.matchId) { scoreDetail in
                        getScoresStrip(data: scoreDetail)
                            .frame(width: UIScreen.main.bounds.width/1.1)
                    }
                }
                .padding(.leading, 15)
            }
            Spacer()
        }
        .frame(height: 230)
    }
    
    var body: some View {
        render()
    }
    
    @ViewBuilder
    fileprivate func getScoresStripListStyle() -> some View {
        switch uiModel.styles?.listStyle {
        case ScoresStripListingUIModelStyles.ScoresStripListStyle.vertical.rawValue:
            ScoresStripVerticalListView
        default:
            ScoresStripHorizontalListView
        }
    }
    
    @ViewBuilder
    fileprivate func getScoresStrip(data: SIScoresStripMatchModel) -> some View {
        switch data.eventState {
        case .live:
            switch uiModel.childComponents?.first(where: {$0.viewType == .live})?.type {
            case ScoresStripListingUIModelChildComponents.ScoresStripType.typeOne.rawValue:
                SILiveScoreStripTypeOne(scoreStripLiveModelTypeOne: SILiveScoreStripTypeOneModel(),
                                        scoresStripDataModel: data)
                
            default:
                EmptyView()
            }
        
        case .result:
            switch uiModel.childComponents?.first(where: {$0.viewType == .result})?.type {
            case ScoresStripListingUIModelChildComponents.ScoresStripType.typeOne.rawValue:
                SIResultScoreStripTypeOne(scoresStripResultTypeOneModel: SIResultScoreStripTypeOneModel())
                
            default:
                EmptyView()
            }
        
        case .upcoming:
            switch uiModel.childComponents?.first(where: {$0.viewType == .upcoming})?.type {
                
            case ScoresStripListingUIModelChildComponents.ScoresStripType.typeOne.rawValue:
                SIUpcomingScoreStripTypeOne(scoresStripTypeOneModel: SIUpcomingScoreStripTypeOneModel(),
                                            scoresStripDataModel: data,
                                            scoresStripStyleDetail: uiModel.childComponents?.first(where: {$0.viewType == .upcoming})?.styles)
                
            default:
                EmptyView()
            }
            
        default:
            EmptyView()
        }
    }
}
