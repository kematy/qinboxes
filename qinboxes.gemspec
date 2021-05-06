
Gem::Specification.new do |s|
  s.name = "qinboxes"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["."]
  s.authors = ["Qin Jibin"]
  s.date = "2020-11-07"
  s.description = "gtk+3.0 inputbox msgbox and combobox."
  s.email = "151711064@qq.com"

  s.files = ["qinboxes.rb", "bin/combobox.exe","bin/inputbox.exe","bin/msgbox.exe",
  "bin/filesavebox.exe","bin/fileselectbox.exe","bin/fileselectbox_raw.exe","bin/fileselectbox_read_json.exe",
  "bin/fileselectbox_read_json_debug.exe",
  "file_select_save.json","bin/searchbox.exe",
  "bin/libgcc_s_dw2-1.dll","bin/zlib1.dll"]
  #s.files      += Dir.glob('mingw32_dll/*')
  s.homepage = "http://fstuling.com/main"
  s.licenses = ["Ruby"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.summary="qinboxes"
end
