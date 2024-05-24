Pod::Spec.new do |s|
s.name = 'DDKitFPS'
s.swift_version = '5.0'
s.version = '3.0.0'
s.license= { :type => "MIT", :file => "LICENSE" }
s.summary = 'FPS test tool for iOS platform'
s.homepage = 'https://github.com/DamonHu/DDKitFPS'
s.authors = { 'ZXKitCode' => 'dong765@qq.com' }
s.source = { :git => "https://github.com/DamonHu/DDKitFPS.git", :tag => s.version}
s.requires_arc = true
s.ios.deployment_target = '11.0'
s.subspec 'core' do |cs|
    cs.source_files = "pod/*.swift"
end
s.default_subspecs = "core"
s.documentation_url = 'https://ddceo.com/blog/1283.html'
end
