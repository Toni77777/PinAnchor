Pod::Spec.new do |spec|
  spec.name         = "PinAnchor"
  spec.version      = "1.0.0"
  spec.summary      = "PinAnchor is a library to make views layout easy on iOS and macOS"
  spec.description  = "PinAnchor is a library to make views layout easy on iOS and macOS. Library is based on Anchors"
  spec.homepage     = "https://github.com/Toni77777/PinAnchor"
  spec.license      = "MIT"
  spec.author             = { "Anton Paliakov" => "toxa95401@gmail.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/Toni77777/PinAnchor.git", :tag => "#{spec.version}" }
  spec.source_files  = "PinAnchor/*.swift"
  spec.swift_version = "4.2"
end