Pod::Spec.new do |s|
  s.name             = 'JRNetWork'
  s.version          = '0.1.0'
  s.summary          = 'JRNetWork'
  s.homepage         = 'https://gitsuk.com/no33jou/JRNetWork'
  s.platform         = :ios, '7.0'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yaojunren' => 'no22jou@163.com' }
  s.source           = { :git => 'https://gitsuk.com/no33jou/JRNetWork.git', :tag => s.version.to_s }
  s.requires_arc     = true

  s.subspec 'Server' do |server|
        server.source_files = 'JRNetwork/Server/*'
        server.public_header_files = 'JRNetwork/Server/JRServerFactory.h'
  end
end
