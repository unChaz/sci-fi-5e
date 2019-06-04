class Compiler
  def initialize(version)
    @version = version
  end

  def run
    puts "Building Sci-fi SRD Version #{@version}"
    File.open(file_name, 'w+') do | write_file |
      @write_file = write_file
      append_template(load_sub_template('srd/styles.html'))
      append_template(main_template)
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

  def main_template
    @main_template ||= File.open('srd/layout.md')
  end

  def load_sub_template(name)
    File.open(name)
  end

  def file_name
    "versions/sci_fi_srd_v#{version}.md"
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
