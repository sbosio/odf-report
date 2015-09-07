module ODFReport

  class XMLBlock < Field

    def replace!(content, data_item = nil)

      txt = content.inner_html

      val = get_value(data_item)

      if val.is_a?(String)
        txt.gsub!(to_placeholder, val)
      elsif val.is_a?(Array)
        self.replace!(content, val.shift + to_placeholder)
        self.replace!(content, val)
      elsif val.nil?
        txt.gsub!(to_placeholder, "")
      end

      content.inner_html = txt

    end

  end

end
