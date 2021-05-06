# qinboxes
ruby info boxes in windows 10, compiled by mingw with gtk3.

for using in interactive ruby.


require "qinboxes"

puts msgbox("哈哈哈");
puts inputbox("荷载版本号,地区代号","2018,FJ");
puts combobox("电压等级",%w(110kV 220kV 330kV 500kV 750kV));

puts fileselectbox(tag="选择xlsx文件",default="(*.xlsx)标准荷载文件",default_pattern="*.xlsx");
puts fileselectbox(tag="选择xlsx文件",default="文件夹",default_pattern="*","哈哈",1);
puts filesavebox(tag="保存xlsx文件",default="*(*.xlsx)Excel文件",default_pattern="*.xlsx",default_name="haha_to_be_saved_file.xlsx");
puts searchbox("我爱你");
a=system("msgbox.exe #{"你好areyou?"}");
puts a

