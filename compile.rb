class Compiler
  def initialize(filename, version)
    @filename = filename
    @version = version
  end

  def run
    puts "Building Sci-fi #{@filename} Version #{@version}"
    Dir.mkdir("versions/#{version}") unless File.exists?("versions/#{version}")
    build_file(@filename)
  end

  def build_file(filename)
    File.open(file_name(filename.upcase), 'w+') do | write_file |
      @write_file = write_file
      append_template(load_sub_template('docs/styles.html'))
      append_template(main_template(filename))
    end
  end

  private

  def append_template(template)
    template.each_line do |line|
      tag = merge_tag(line)
      sub_template_name = template_file_name(tag)
      unless tag.nil?
        if tag == '[[version]]'
          @write_file << line.sub!(tag, version)
        elsif File.file?(sub_template_name)
          append_template(load_sub_template(sub_template_name))
        else
          puts "Invalid Tag #{tag}"
          @write_file << line
        end
      else
        @write_file << line
      end
    end
  end

  def merge_tag(line)
    line[/\[\[.*?\]\]/]
  end

  def main_template(filename)
    @main_template ||= File.open("docs/#{filename}.html")
  end

  def load_sub_template(name)
    File.open(name)
  end

  def file_name(type)
    "versions/#{version}/SCI-5_#{type}.md"
  end

  def template_file_name(merge_tag)
    unless merge_tag.nil?
      file_name = merge_tag.sub('[[', 'docs/')
      file_name.sub!(']]', '.md')
    end
  end
end

def version
  ARGV[1]
end

def file
  ARGV.first
end

Compiler.new(file, version).run
