Pod::Spec.new do |s|

    s.author = {'qiansheng' => '790165729@qq.com'}
    s.license = 'MIT'
    s.requires_arc = true
    s.version = '1.0.1'
    s.swift_version = "5.0"
    s.homepage = "https://github.com/qs991011/QSExtension"
    s.name = "QSExtension"
    s.source_files = "Source/*.swift"
    s.source = { :git => 'https://github.com/qs991011/QSExtension.git', :tag => s.version.to_s }

    s.summary = 'Common extensions'
    s.description = 'simple a extension'

    s.ios.deployment_target = '10.0'

    s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }
end
