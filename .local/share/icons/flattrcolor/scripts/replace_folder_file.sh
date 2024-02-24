#!/usr/bin/env bash
#	default color: 178984
oldglyph=#222d56
newglyph=#203b5a

#	Front
#	default color: 36d7b7
oldfront=#3e549e
newfront=#3a6ca5

#	Back
#	default color: 1ba39c
oldback=#2b396c
newback=#284a71

sed -i "s/#524954/$oldglyph/g" $1
sed -i "s/#9b8aa0/$oldfront/g" $1
sed -i "s/#716475/$oldback/g" $1
sed -i "s/$oldglyph;/$newglyph;/g" $1
sed -i "s/$oldfront;/$newfront;/g" $1
sed -i "s/$oldback;/$newback;/g" $1
