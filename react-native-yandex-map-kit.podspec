require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']

  s.homepage     = package['homepage']
  s.license      = package['license']
  s.platform     = :ios, "9.0"
  s.authors      = { "escaton" => "escaton@yandex-team.ru", "yeti-or" => "yeti-or@yandex-team.ru" }
  s.source       = { :git => package['repository']['url'] }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'
  s.dependency 'YandexMapKit', '~> 3.0.0'
end
