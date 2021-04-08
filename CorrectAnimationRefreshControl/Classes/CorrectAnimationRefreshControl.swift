//
//  CorrectAnimationRefreshControl.swift
//  SocialTrading
//
//  Created by akonshin on 02/08/2019.
//  Copyright © 2019 com.exness. All rights reserved.
//

import UIKit

/// A refresh control that continues animation after returning back to the scrollview screen
final public class CorrectAnimationRefreshControl: UIRefreshControl {

    public override func didMoveToWindow() {
        super.didMoveToWindow()

        restartAnimationIfNeeded()
    }

    override public init() {
        super.init()

        setupObserving()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        setupObserving()
    }

    private func setupObserving() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(restartAnimationIfNeeded),
                                               name: UIApplication.willEnterForegroundNotification,
                                               object: nil)
    }

    @objc private func restartAnimationIfNeeded() {
        if window != nil {
            if isRefreshing, let scrollView = next as? UIScrollView {
                let offset = scrollView.contentOffset

                UIView.performWithoutAnimation {
                    endRefreshing()
                }
                beginRefreshing()

                scrollView.contentOffset = offset
            }
        }
    }

}
