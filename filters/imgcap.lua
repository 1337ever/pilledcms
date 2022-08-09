function Image(n)
	return {
		pandoc.RawInline('html', "<figure>"),
		pandoc.Image(n.caption, n.src),
		pandoc.RawInline('html', "<figcaption>"),
		pandoc.Str(pandoc.utils.stringify(n.caption)),
		pandoc.RawInline('html', "</figcaption>"),
		pandoc.RawInline('html', "</figure>")
	}
end
