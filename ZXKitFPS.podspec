Pod::Spec.new do |s|
s.name = 'ZXKitFPS'
s.swift_version = '5.0'
s.version = '1.0.0'
s.license= { :type => "MIT", :file => "LICENSE" }
s.summary = 'FPS test tool for iOS platform'
s.homepage = 'https://github.com/DamonHu/ZXKitFPS'
s.authors = { 'ZXKitCode' => 'dong765@qq.com' }
s.source = { :git => "https://github.com/DamonHu/ZXKitFPS.git", :tag => s.version}
s.requires_arc = true
s.ios.deployment_target = '11.0'
s.subspec 'core' do |cs|
    cs.source_files = "pod/*.swift"
end
s.subspec 'zxkit' do |cs|
    cs.resource_bundles = {
      'ZXKitFPS' => ['pod/assets/**/*.png']
    }
    cs.dependency 'ZXKitFPS/core'
    cs.dependency 'ZXKitCore/core'
    cs.source_files = "pod/zxkit/*.swift"
end
s.default_subspecs = "core"
s.documentation_url = 'http://blog.hudongdong.com/swift/1079.html'
end
