//
//  VideoBackGroundView.swift
//  EliteContractorAI
//
//  Created by matthew comer on 2026-06-07.
//

import Foundation
import SwiftUI
import AVKit

// Plays an mp4 video behind a SwiftUI screen
struct VideoBackgroundView: UIViewRepresentable {
    let videoName: String

    func makeUIView(context: Context) -> UIView {
        let view = UIView()

        // Finds the mp4 file in the project
        guard let path = Bundle.main.path(forResource: videoName, ofType: "mp4") else {
            return view
        }

        // Creates the video player
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerLayer = AVPlayerLayer(player: player)

        // Makes the video fill the screen
        playerLayer.videoGravity = .resizeAspectFill
        playerLayer.frame = UIScreen.main.bounds

        view.layer.addSublayer(playerLayer)

        // Starts the video
        player.play()
        player.actionAtItemEnd = .none

        // Loops the video when it ends
        NotificationCenter.default.addObserver(
            forName: .AVPlayerItemDidPlayToEndTime,
            object: player.currentItem,
            queue: .main
        ) { _ in
            player.seek(to: .zero)
            player.play()
        }

        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {
    }
}
