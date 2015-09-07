module ODFReport

  class XMLBlock < Field

    def replace!(content, data_item = nil)

      txt = content.inner_html

      val = get_value(data_item)

      if val.is_a?(String)
        txt.gsub!(to_placeholder, val)
      elsif val.is_a?(Array)
        val.each do |v|
          txt.gsub!(to_placeholder, v + to_placeholder)
        end
        txt.gsub!(to_placeholder, '')
      end

      content.inner_html = txt

    end

  end

end
