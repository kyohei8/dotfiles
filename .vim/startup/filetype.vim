" JavaScript ------------------------------------------------------------------
autocmd FileType javascript iabbrev <buffer> iff if(){<cr>}<esc>k$2hi
autocmd FileType javascript iabbrev <buffer> elif else if(){<cr>}<esc>k$2hi
autocmd FileType javascript iabbrev <buffer> ifelif if(){<cr>}else if(){<cr>}<esc>3k$2hi
autocmd FileType javascript iabbrev <buffer> ifelse if(){<cr>}else{<cr>}<esc>3k$2hi
autocmd FileType javascript iabbrev <buffer> ifeiel if(){<cr>}else if(){<cr>}else{<cr>}<esc>5k$2hi
autocmd FileType javascript iabbrev <buffer> eelse else{<cr>}<esc>O
autocmd FileType javascript iabbrev <buffer> ffor for(){<cr>}<esc>k$2hi
autocmd FileType javascript iabbrev <buffer> wwhile while(){<cr>}<esc>k$2hi
autocmd FileType javascript iabbrev <buffer> trca try{<cr>}<cr>catch (e) {<cr>}<esc>2kO
autocmd FileType javascript iabbrev <buffer> afun function(){<cr>}<esc>k$2hi
autocmd FileType javascript iabbrev <buffer> gafun function *() {<cr>}<esc>k$2hi
autocmd FileType javascript iabbrev <buffer> nfun function (){<cr>}<esc>k$3hi
autocmd FileType javascript iabbrev <buffer> gfun function *() {<cr>}<esc>k$3hi
autocmd FileType javascript iabbrev <buffer> vfun var = function(){<cr>};<esc>k$13hi
autocmd FileType javascript iabbrev <buffer> efun exports. = function() {<cr>};<esc>k$14hi
autocmd FileType javascript iabbrev <buffer> gefun exports. = function *() {<cr>};<esc>k$16hi
autocmd FileType javascript iabbrev <buffer> funmod (function() {<cr>}());<esc>O<esc>0i<Space>
autocmd FileType javascript iabbrev <buffer> ddef define([], function() {<cr>});<esc>k$14hi
autocmd FileType javascript iabbrev <buffer> ret return;<esc>i
autocmd FileType javascript iabbrev <buffer> us 'use strict';

" JavaScript OOP Class
autocmd FileType javascript iabbrev cls <Esc>B"zde"_xi
      \var <Esc>"zpa = function(){<Enter>
      \};<Enter>
      \<Esc>"zpa.prototype.method = function(){<Enter>
      \};<Enter>
      \module.exports = <Esc>"zpa;
      \<Esc>4ko<C-d><Tab>
      \<Esc>"_xa

" JavaScript OOP Class with Extend Class
autocmd FileType javascript iabbrev clse <Esc>B"zde"_xi
      \var <Esc>"zpa = function(){<Enter>
      \Klass.call(this);<Enter>
      \};<Enter>
      \<Esc>"zpa.prototype = new Klass();<Enter>
      \<Esc>"zpa.prototype.constructor = <Esc>"zpa;<Enter>
      \<Esc>"zpa.prototype.method = function(){<Enter>
      \};<Enter>
      \module.exports = <Esc>"zpa;
      \<Esc>6ko<C-d><Tab>
      \<Esc>"_xa

" proto
autocmd FileType javascript iabbrev proto <Esc>B"zde"_xi
      \<Esc>"zpa.prototype. = function(){<Enter>
      \};<Enter>
      \<Esc>2ko<C-d><Tab>
      \<Esc>"_xa

" React createCalss
autocmd FileType javascript iabbrev rcc <Esc>B"zde"_xi
      \var <Esc>"zpa = React.createClass({<Enter>
      \<Tab>render: function() {<Enter>
      \<Tab>return (<Enter>
      \);<Enter>
      \<C-D>}<Enter>
      \<C-D>});<Enter>
      \<Enter>
      \module.exports = <Esc>"zpa;
      \<Esc>?return<Enter>o<Tab>
      \<Esc>"_xa

" ES2015 syntax
autocmd FileType javascript iabbrev <buffer> lobj let = {};<esc>4hi
autocmd FileType javascript iabbrev <buffer> arf () => {<cr>};<esc>k$5hi
autocmd FileType javascript iabbrev <buffer> imp import from '';<esc>8hi
autocmd FileType javascript iabbrev <buffer> cls6 <Esc>B"zde"_xi
      \class <Esc>"zpa{<Enter>
      \constructor(){<Enter>}<Enter>
      \<C-D>}<Enter>
      \<Esc>?constructor(<Enter>
      \<Esc>:noh<Enter>
      \o

"coffeeScript ----------------------------------------------------------------
" coffee Class
autocmd FileType coffee iabbrev ccls <Esc>B"zde"_xi
      \class <Esc>"zpa<Enter>
      \constructor: () -><Enter>
      \<C-D><C-D>module.exports = <Esc>"zpa
      \<Esc>?constructor:<Enter>o<Tab>
      \<Esc>"_xa
      \<Esc>:noh<Enter>
