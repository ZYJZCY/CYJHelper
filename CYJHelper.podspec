Pod::Spec.new do |s|
s.name = 'CYJHelper'
s.version = '1.0.5'
s.license = 'MIT'
s.summary = 'Tools for iOS development.'
s.homepage = "https://github.com/ZYJZCY/CYJHelper"
s.authors = { 'ZCYZYJ' => '912327710@qq.com' }
s.source = { :git => 'https://github.com/ZYJZCY/CYJHelper.git', :tag => s.version.to_s }
s.requires_arc = true
s.ios.deployment_target = '8.0'
s.source_files = "**/*.{h,m}"
s.dependency 'AFNetworking'
end
