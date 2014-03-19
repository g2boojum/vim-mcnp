if did_filetype() " filetype already set..
  finish  " ..don't do these checks
endif
"Original script looks for "mcnp" in the second line,
"I'm happy with just the second line being a comment (and not a fortran file)
"if getline(2) =~ '^C.*\<mcnp\>\c'
if getline(2) =~ '^C.*\c'
  setfiletype mcnp
endif
