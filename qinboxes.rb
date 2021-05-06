require 'json'
#using utf-8
$LOAD_PATH.unshift File.dirname(__FILE__)+"/bin/"
#$LOAD_PATH.unshift File.dirname(__FILE__)+"/mingw32_dll"

def msgbox(str)
  system("#{(File.dirname(__FILE__)+"/bin/").gsub("/","\\")}msgbox.exe #{str}")
end
def inputbox(tag,default)
  str=`#{(File.dirname(__FILE__)+"/bin/").gsub("/","\\")}inputbox.exe #{tag} #{default.to_s}`
end
def searchbox(default_search_contents)
  str=`#{(File.dirname(__FILE__)+"/bin/").gsub("/","\\")}searchbox.exe #{default_search_contents.to_s}`
end
def fileselectbox(title="选择文件",name="*.所有文件类型",pattern="*",current_forlder="./../../")
  json_file={
  "title"=>title,
  "name"=>name,
  "pattern"=>pattern,
  "current_folder"=>current_forlder
  }
  File.open(File.dirname(__FILE__)+"/bin/file_select_save.json","w+") do |f|
    f.puts JSON.pretty_generate(json_file)
  end
  File.open("file_select_save.json","w+") do |f|
    f.puts JSON.pretty_generate(json_file)
  end
  sleep(0.01)
  str=`#{(File.dirname(__FILE__)+"/bin/").gsub("/","\\")}fileselectbox_read_json.exe`
end
def file_select_box_raw(title="选择文件",typename="*.所有文件类型",pattern="*",current_forlder="./../../")
   str=`#{(File.dirname(__FILE__)+"/bin/").gsub("/","\\")}fileselectbox_raw.exe #{title} #{typename} \"#{pattern}\" \"#{current_forlder}\"`
end
def filesavebox(tag="保存文件",default="*.所有文件类型",default_pattern="*",default_name="to_be_saved_file.any")
  str=`#{(File.dirname(__FILE__)+"/bin/").gsub("/","\\")}filesavebox.exe #{tag} #{default.to_s} #{default_pattern.to_s} #{default_name.to_s}`
end
def combobox(tag,default_lst)
  if default_lst.is_a? Array
    default_lst=default_lst.map(&:to_s).join(",")
  end
  str=`#{(File.dirname(__FILE__)+"/bin/").gsub("/","\\")}combobox.exe #{tag} #{default_lst.to_s}`
end

#puts msgbox("哈哈哈")
#puts inputbox("荷载版本号,地区代号","2018,FJ")
#puts combobox("电压等级",%w(110kV 220kV 330kV 500kV 750kV))

#puts fileselectbox(tag="选择xlsx文件",default="(*.xlsx)标准荷载文件",default_pattern="*.xlsx")
#puts fileselectbox(tag="选择xlsx文件",default="文件夹",default_pattern="*","哈哈",1)
#puts filesavebox(tag="保存xlsx文件",default="*(*.xlsx)Excel文件",default_pattern="*.xlsx",default_name="haha_to_be_saved_file.xlsx")
#puts searchbox("我爱你")
#a=system("msgbox.exe #{"你好areyou?"}")
#puts a


#str=`inputbox.exe #{"荷载版本号,地区代号,气象代号,电压等级,地形类别,杆塔类型,是否台风区,是否舞动区"} #{"2018,FJ,3010,500kV,山地,悬垂直线,false,false".to_s}`
#puts str


#str=`combobox.exe #{"电压等级"} #{"110kV,220kV,330kV,500kV,750kV"}`
#puts str


=begin
require 'file_bsearch'
#for character encodings. you can pass String object that is 'utf8', 'eucjp', 'jis', 'sjis' or each prefix. if you pass nil or does not pass, search for ascii character.
encoding="utf8"
puts FileBsearch.exist?("example.rb", "require \"gtk3\"", encoding)

#File.bsearch?(path, string, encoding)
file = File.open("example.rb",)
puts file.bsearch?("require \"gtk3\"")
puts "app  ... line=#{FileBsearch.get_lines("example.rb","app", encoding)}"
file.close

puts "index:"
puts FileBsearch.index("example.rb", "require \"gtk3\"", encoding)

#File.bsearch(path, string, encoding)
#file = open(path)
#file.bsearch(string, encoding)
puts "line:"
puts FileBsearch.get_lines("example.rb", "require", encoding)
puts FileBsearch.get_lines("example.rb","app", encoding)  ##非排序搜索不出来。
#File.bsearch_lines(path, prefix, encoding)
#file = open(path)
#file.bsearch_lines(prefix, encoding)
=end
