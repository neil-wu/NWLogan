Pod::Spec.new do |s|
    s.name             = 'NWLogan'
    s.version          = '1.2.7'
    s.summary          = 'Remove unused encrypt files from [Project Logan](https://github.com/Meituan-Dianping/Logan)'

    s.homepage         = 'https://github.com/neil-wu/NWLogan'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'neilwu' => 'neilwu'}
    s.source           = { :git => 'https://github.com/neil-wu/NWLogan.git', :tag => s.version.to_s }

    s.ios.deployment_target = '8.0'
    s.osx.deployment_target = '10.9'

    s.source_files = "Source/iOS/*", "Source/Clogan/*.{h,c}"
    s.public_header_files = "Source/iOS/*.h"

    s.subspec 'mbedtls' do |mbedtls|
        mbedtls.source_files = "Source/mbedtls/**/*.{h,c}"
        mbedtls.header_dir = 'mbedtls'
        mbedtls.private_header_files = "Source/mbedtls/**/*.h"
        mbedtls.pod_target_xcconfig = { "HEADER_SEARCH_PATHS" => "${PODS_ROOT}/NWLogan/Source/**"}
    end
end


