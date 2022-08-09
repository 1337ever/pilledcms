function Note(n)
	newnote=pandoc.Note(n.content)
	table.insert(newnote.content[1].c, pandoc.Str(" "))
	return {
		newnote,
	}
end
