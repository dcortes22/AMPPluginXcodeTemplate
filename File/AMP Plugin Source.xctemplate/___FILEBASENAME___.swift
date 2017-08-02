//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
#if os(iOS)
    // If we are on iOS import the AmpCore
    import AmpCore
#endif
#if os(tvOS)
    // If we are on tvOS import the AmpCoreTV
    import AmpCoreTV
#endif

open class ___FILEBASENAMEASIDENTIFIER___: NSObject {
    
    internal weak var ampPlayer:AmpPlayer?
    internal var observerID: Int?
    
    //Add extra parameters for plugin initialization here
    open init?(_ ampPlayer: AmpPlayer) {
        guard let player = ampPlayer else {
            return nil
        }
        
        super.init()
        self.ampPlayer = player
        self.observerID = player.registerObserver(self)
    }
    
    // Always clean weak references here
    deinit {
        self.ampPlayer = nil
    }

}

//Listen to all AMP Events using the Player Event Observer

extension ___FILEBASENAMEASIDENTIFIER___: PlayerEventObserver {
    
    // Buffering notification states
    func onBufferingStateChanged(_ ampPlayer: AmpPlayer) {
        
    }
    
    // Playback notification states
    func onPlaybackStateChanged(_ ampPlayer: AmpPlayer) {
        
    }
    
    // Called when the player send a releases notification
    func willStop(_ ampPlayer: AmpPlayer) {
        guard let id = self.observerID else {
            return
        }
        
        ampPlayer.removeObserver(id)
        //Clean any other reference here
    }
}
