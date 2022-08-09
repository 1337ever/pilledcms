function Header(h)
	strcontent=pandoc.utils.stringify(h.content)
	raw=pandoc.RawInline('html', string.format('<a class="headlink" href="#%s">%s</a>', h.identifier, strcontent))
	return {
		
		pandoc.Header(h.level, raw, h.attr)
	}
end
