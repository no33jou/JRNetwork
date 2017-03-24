Pod::Spec.new do |s|
  s.name             = 'YJRNetwork'
  s.version          = '0.1.3'
  s.summary          = 'YJRNetwork'
  s.homepage         = 'https://github.com/no33jou/JRNetwork'
  s.platform         = :ios, '7.0'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yaojunren' => 'no22jou@163.com' }
  s.source           = { :git => 'https://github.com/no33jou/JRNetwork.git', :tag => s.version.to_s }
  s.requires_arc     = true

  s.subspec 'Server' do |server|
        server.source_files = 'JRNetwork/Server/**/*'
        server.public_header_files = 'JRNetwork/Server/**/*.h'
  end
  s.subspec 'Plist' do |plist|
         plist.source_files = 'JRNetwork/Plist/**/*'
         plist.public_header_files = 'JRNetwork/Plist/**/*.h'
  end
end
