Pod::Spec.new do |s|
  s.name          = 'FwiCoreRX'
  s.version       = '4.2.5'
  s.summary       = 'FwiCoreRX project'
  s.description   = 'Using for iOS project'
  s.homepage      = 'https://google.com.vn'
  s.license       = 'MIT'
  s.author        = 'DungVu'
  s.platform      = :ios, "10.0"
  # s.source       = { :path => '.' }
  s.source = { :git => 'https://github.com/dung00275/swift-core', :tag => '4.2.5' }
  s.source_files        = 'Sources/FwiCoreRX/*.*'
  s.dependency 'RxSwift', '5.1.1'
  s.dependency 'RxCocoa', '5.1.1'
  # s.dependency 'FwiCore', :git => 'https://github.com/dung00275/swift-core', :tag => '4.1.4'
  # s.dependency 'FwiCore', :podspec => "./FwiCore.podspec"
  s.dependency 'FwiCore'
end
