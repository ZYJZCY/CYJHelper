Pod::Spec.new do |s|
s.name = 'CYJHelper'
s.version = '1.1.4'
s.license = 'Sample'
s.summary = 'iOS开发工具类'
s.description = <<-DESC iOS开发工具类 DESC>>
s.homepage = 'https://github.com/ZYJZCY/CYJHelper.git'
s.authors = { 'ZYJZCY' => '912327710@qq.com' }
s.source = { :git => "https://github.com/ZYJZCY/CYJHelper.git", :tag => "1.1.4"}
s.requires_arc = trues.ios.deployment_target = '9.0'
s.source_files = "CYJHelper/CYJHelper/*.{h,m}"
s.source = "CYJHelper/Assets.xcassets"
s.frameworks = 'AFNetworking'
end
