import AVFAudio
import Foundation

public typealias AVCodecDelegate = AudioCodecDelegate & VideoCodecDelegate

protocol IOUnit {
    var mixer: IOMixer? { get set }
    var muted: Bool { get set }

    func appendSampleBuffer(_ sampleBuffer: CMSampleBuffer)
}

protocol IOUnitEncoding {
    func startEncoding(_ delegate: AVCodecDelegate)
    func stopEncoding()
}

protocol IOUnitDecoding {
    func startDecoding(_ audioEngine: AVAudioEngine)
    func stopDecoding()
}
