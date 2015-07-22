" JavaScript ------------------------------------------------------------------
autocmd FileType javascript inoremap <buffer> iff if () {<cr>}<esc>k$2hi
autocmd FileType javascript inoremap <buffer> elif else if () {<cr>}<esc>k$2hi
autocmd FileType javascript inoremap <buffer> ifelif if () {<cr>}<cr>else if () {<cr>}<esc>3k$2hi
autocmd FileType javascript inoremap <buffer> ifelse if () {<cr>}<cr>else {<cr>}<esc>3k$2hi
autocmd FileType javascript inoremap <buffer> ifeiel if () {<cr>}<cr>else if () {<cr>}<cr>else {<cr>}<esc>5k$2hi
autocmd FileType javascript inoremap <buffer> eelse else {<cr>}<esc>O
autocmd FileType javascript inoremap <buffer> ffor for () {<cr>}<esc>k$2hi
autocmd FileType javascript inoremap <buffer> wwhile while () {<cr>}<esc>k$2hi
autocmd FileType javascript inoremap <buffer> trca try {<cr>}<cr>catch (e) {<cr>}<esc>2kO
autocmd FileType javascript inoremap <buffer> afun function() {<cr>}<esc>k$2hi
autocmd FileType javascript inoremap <buffer> gafun function *() {<cr>}<esc>k$2hi
autocmd FileType javascript inoremap <buffer> nfun function () {<cr>}<esc>k$3hi
autocmd FileType javascript inoremap <buffer> gfun function *() {<cr>}<esc>k$3hi
autocmd FileType javascript inoremap <buffer> vfun var  = function() {<cr>};<esc>k$14hi
autocmd FileType javascript inoremap <buffer> efun exports. = function() {<cr>};<esc>k$14hi
autocmd FileType javascript inoremap <buffer> gefun exports. = function *() {<cr>};<esc>k$16hi
autocmd FileType javascript inoremap <buffer> funmod (function() {<cr>}());<esc>O<esc>0i<Space>
autocmd FileType javascript inoremap <buffer> ddef define([], function() {<cr>});<esc>k$14hi
autocmd FileType javascript iabbrev  <buffer> ret return;<esc>i
autocmd FileType javascript iabbrev  <buffer> us 'use strict';

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

" CoffeeScript ----------------------------------------------------------------
" coffee Class
autocmd FileType coffee iabbrev ccls <Esc>B"zde"_xi
      \class <Esc>"zpa<Enter>
      \constructor: () -><Enter>
      \<C-D><C-D>module.exports = <Esc>"zpa
      \<Esc>?constructor:<Enter>o<Tab>
      \<Esc>"_xa
      \<Esc>:noh<Enter>
