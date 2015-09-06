module ODFReport

  class XMLBlock < Field

    def replace!(content, data_item = nil)

      txt = content.inner_html

      val = get_value(data_item)

      txt.gsub!(to_placeholder, val)

      content.inner_html = txt

    end

  end

end
