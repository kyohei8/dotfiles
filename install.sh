#!/bin/sh

#シンボル化しないファイル・ディレクトリを記述
_IGNORE_DOT_FILE=(./ ../ .DS_Store .git/)

# 不要なファイルかどうか
is_ignore(){
	for ignore in ${_IGNORE_DOT_FILE[@]}; do
    	if [ $ignore == $1 ]; then
    		return 0
    	fi
	done
	return 1
}


for dotfile in `ls -aF | grep '^\.'`; do
	is_ignore $dotfile
	if [ $? -eq 1 ]; then
		src_path=`pwd`/$dotfile
		echo 'create symbolic link ->'$dotfile
		# ディレクトリの場合最後のスラッシュを削除
		#ln -s $src_path $HOME/`echo $dotfile | sed -e 's/\/$//'`
	fi
done