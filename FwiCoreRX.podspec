Pod::Spec.new do |s|
  s.name          = 'FwiCoreRX'
  s.version       = '4.2.3'
  s.summary       = 'FwiCoreRX project'
  s.description   = 'Using for iOS project'
  s.homepage      = 'https://google.com.vn'
  s.license       = 'MIT'
  s.author        = 'DungVu'
  s.platform      = :ios, "10.0"
  # s.source       = { :path => '.' }
  s.source = { :git => 'https://github.com/dung00275/swift-core', :tag => '4.2.3' }
  s.source_files        = 'Sources/FwiCoreRX/*.*'
  s.dependency 'RxSwift'
  s.dependency 'RxCocoa'
  # s.dependency 'FwiCore', :git => 'https://github.com/dung00275/swift-core', :tag => '4.1.4'
  # s.dependency 'FwiCore', :podspec => "./FwiCore.podspec"
  s.dependency 'FwiCore'
end
