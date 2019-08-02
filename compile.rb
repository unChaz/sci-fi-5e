class Compiler
  def initialize(version)
    @version = version
  end

  def run
    puts "Building Sci-fi SRD Version #{@version}"
    Dir.mkdir("versions/#{version}") unless File.exists?("versions/#{version}")
    # build_file('srd')
    build_file('monster_manual')
    # build_file('tekcasting')
    # build_file('tek_items')
  end

  def build_file(filename)
    File.open(file_name(filename.upcase), 'w+') do | write_file |
      @write_file = write_file
      append_template(load_sub_template('srd/styles.html'))
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
    @main_template ||= File.open("srd/#{filename}.html")
  end

  def load_sub_template(name)
    File.open(name)
  end

  def file_name(type)
    "versions/#{version}/SCI-5_#{type}.md"
  end

  def template_file_name(merge_tag)
    unless merge_tag.nil?
      file_name = merge_tag.sub('[[', 'srd/')
      file_name.sub!(']]', '.md')
    end
  end
end

def version
  ARGV.first
end

Compiler.new(version).run
