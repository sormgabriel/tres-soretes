|allClasseStream index|
index:=1.
[allClasseStream:=(StandardFileStream fileNamed:'all_classes.txt') .

SmalltalkImage current allClasses do:[:class | allClasseStream nextPutAll:index asString; nextPutAll:' '; 
nextPutAll:class printString;lf. index:=index+1 ]]ensure:[allClasseStream close]