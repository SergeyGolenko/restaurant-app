//
//  Extension scrollView.swift
//  restaurant-app
//
//  Created by Сергей Голенко on 13.01.2021.
//

import UIKit

extension UICollectionView {
    func scrollToNextItem() {
        let contentOffset = CGFloat(floor(self.contentOffset.x + self.bounds.size.width))
        self.moveToFrame(contentOffset: contentOffset)
    }

    func scrollToPreviousItem() {
        let contentOffset = CGFloat(floor(self.contentOffset.x - self.bounds.size.width))
        self.moveToFrame(contentOffset: contentOffset)
    }

    func moveToFrame(contentOffset : CGFloat) {
        self.setContentOffset(CGPoint(x: contentOffset, y: self.contentOffset.y), animated: true)
    }
    
    func goToItem( item indexPathItemMy : Int){
        let nextItem = indexPathItemMy + 1
        let nextIndexPath = IndexPath(item: nextItem, section: 0)
        self.scrollToItem(at: nextIndexPath, at:.top, animated: true)
    }
}
