Pod::Spec.new do |s|

    s.author = {'qiansheng' => '790165729@qq.com'}
    s.license = 'MIT'
    s.requires_arc = true
    s.version = '0.0.1'
    s.homepage = "https://github.com/qs991011/QSExtension"
    s.name = "QSExtension"
    s.swift_version = '5.0'

    s.source_files = 'Source/*.swift'
    s.source = { :git => 'https://github.com/qs991011/QSExtension.git', :tag => s.version.to_s }

    s.summary = 'A Json Serialization & Deserialization Library for Swift'
    s.description = 'A Handy Json Library for Swift which serials object to json and deserials json to object'

    s.ios.deployment_target = '8.0'

    s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }
end
