//
//  View+PinAnchor.swift
//  PinAnchor
//
//  Created by Anton Paliakou on 7/25/21.
//

#if os(iOS)
    import UIKit
#elseif os(OSX)
    import AppKit
#endif

#if os(iOS)
    public typealias PinView = UIView
#elseif os(OSX)
    public typealias PinView = NSView
#endif

// MARK: - Public extensions

public extension PinView {
    
    @discardableResult
    func pinToTop(inset: CGFloat = .zero) -> UIView {
        self.topAnchor.constraint(equalTo: self.parent.topAnchor, constant: inset).isActive = true
        return self
    }
    
    @discardableResult
    func pinToTopSafeArea(inset: CGFloat = .zero) -> UIView {
        self.topAnchor.constraint(equalTo: self.parent.safeAreaLayoutGuide.topAnchor, constant: inset).isActive = true
        return self
    }
    
    @discardableResult
    func pinToLeft(inset: CGFloat = .zero) -> UIView {
        self.leadingAnchor.constraint(equalTo: self.parent.leadingAnchor, constant: inset).isActive = true
        return self
    }
    
    @discardableResult
    func pinToRight(inset: CGFloat = .zero) -> UIView {
        self.trailingAnchor.constraint(equalTo: self.parent.trailingAnchor, constant: -inset).isActive = true
        return self
    }
    
    @discardableResult
    func pinToBottom(inset: CGFloat = .zero) -> UIView {
        self.bottomAnchor.constraint(equalTo: self.parent.bottomAnchor, constant: -inset).isActive = true
        return self
    }
    
    @discardableResult
    func pinToBottomSafeArea(inset: CGFloat = .zero) -> UIView {
        self.bottomAnchor.constraint(equalTo: self.parent.safeAreaLayoutGuide.bottomAnchor, constant: inset).isActive = true
        return self
    }
    
    @discardableResult
    func makeWidth(_ width: CGFloat = .zero) -> UIView {
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
        return self
    }
    
    @discardableResult
    func makeHeight(_ height: CGFloat = .zero) -> UIView {
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
        return self
    }
    
    @discardableResult
    func centerVertically(offset: CGFloat = .zero) -> UIView {
        self.centerYAnchor.constraint(equalTo: self.parent.centerYAnchor, constant: offset).isActive = true
        return self
    }
    
    @discardableResult
    func centerHorizontally(offset: CGFloat = .zero) -> UIView {
        self.centerXAnchor.constraint(equalTo: self.parent.centerXAnchor, constant: offset).isActive = true
        return self
    }
}

// MARK: - Private extensions

private extension PinView {
    
    private var parent: UIView {
        guard let parent = self.superview else {
            fatalError("Expected superview but found nil")
        }
        return parent
    }
}
