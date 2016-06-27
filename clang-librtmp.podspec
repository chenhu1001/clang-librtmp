Pod::Spec.new do |s|
  s.name     = 'clang-librtmp'
  s.version  = '1.0.0'
  s.license  = 'MIT'
  s.summary  = 'librtmp build for iOS'
  s.homepage = 'https://github.com/chenhu1001/clang-librtmp'
  s.authors  = { 'Min Kim' => 'chenhu1001@qq.com' }
  s.source   = { :git => 'https://github.com/chenhu1001/clang-librtmp.git', :tag => "1.0.0", :submodules => true }
  s.requires_arc = false
  
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.8'

  s.public_header_files = 'include/librtmp/{*}.h', 'include/openssl/{*}.h'
  
  s.vendored_libraries = 'lib/libcrypto.a', 'lib/libssl.a', 'lib/librtmp.a'
  s.preserve_paths = 'include/librtmp/*.h', 'include/openssl/*.h'
  s.libraries = 'ssl', 'crypto', 'rtmp'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/#{s.name}/include/**", "LIBRARY_SEARCH_PATHS" => "${PODS_ROOT}/#{s.name}/lib/**" }
end
