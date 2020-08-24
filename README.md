Giacomo Grasso's awesome vim syntax file for MCNP, with some minor
tweaking and also some influence from Seth Johnson's version
(found at 
http://reference-man.blogspot.com/2009/02/mcnp-syntax-highlighting-in-vim.html).

Installation
============

Because this script comes with a `scripts.vim` file, I highly 
recommend using [Pathogen](https://github.com/tpope/vim-pathogen)
for activation and installation so that you can avoid overwriting
any existing `~/.vim/scripts.vim` file:

    cd ~/.vim/bundle
    git clone git://github.com/g2boojum/vim-mcnp.git
    
Alternatively, you can just use [vim-plug](https://github.com/junegunn/vim-plug)
and put "Plug 'g2boojum/vim-mcnp'" in your `.vimrc` file. 

Please make sure that the following options are set in your vimrc:

```vim
syntax on
filetype plugin indent on
```

Usage
=====

Well, it might just work.  The `scripts.vim` file looks to see if the 
second line of the file is a comment line, and if the file hasn't already
had a filetype assigned, then it turns on the mcnp syntax highlighting.
Both false positives and false negatives are possible.

Giacomo Grasso uses ".imcnp" as a file extension for MCNP input decks,
so the ftdetect file will turn on the mcnp syntax highlighting for any
file with that file extension.

Alternatively, you can do it the old fashioned way:

```vim
set ft=mcnp
```

Development
===========

Pull requests and patches are strongly encouraged!

This code works well enough for me, and well enough for Giacomo,
that there really hasn't been much in the way of updates in a 
very long time.  If you'd like to see it do more, please feel
free to help!

License, copyright, and acknowledgements
========================================

Many thanks to [Giacomo Grasso](http://www.afs.enea.it/ggrasso/) for
his permission to publish his work on github.  Thanks are also due to
[Seth Johnson](http://reference-man.blogspot.com) for creating a set
of MCNP file detection rules.

* Copyright 2014      © Grant Goodyear
* Copyright 2009-2014 © Giacomo Grasso <giacomo.grasso@enea.it>

Modified and distributed under the GPL v 3.0.  See
`License.md` for more information.
