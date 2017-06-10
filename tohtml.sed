# for html 

# delete lines that have [pdfonly] 
/\[latexonly\]/d 


## Escape ampersands
s/&/&amp;/g


# Use # for emphasis
s/#\([^#]*\)#/<i>\1<\/i>/g 

## Turn Chapter into \chapter
s/Chapter \([0-9]*\)/<h2><a name="ch\1"><\/a>Chapter \1<\/h2><div class="ni">/



# line returns for colons in parts
/XXXXX/ s/:/:<br>/  

#### Use XXXXX to signify part
s/XXXXX\(.*\)/<div class="prt"><h1>\1<\/h1><\/div>/ 



# Rules
s/\*\*\*\*/<hr\/>/g
s/~~~/<hr\/>/g

#with bolding
#s/\^\([^\^]*\)\^/<b>\1<\/b>/g 
#no bolding 
s/\^//g


# don't use directional quotes
s/`/'/g 

#small caps
s/@\([^@]*\)@/<span style="font-variant:small-caps">\1<\/span>/g 

## Add paragraph marks to lines that don't start with [ or <h1> or <h2> 
/^\[\|<h1>\|<h2>/!  s/.\+/<p>&<\/p>/ 


## em dashes
s/---/\&mdash;/g 

## en dashes
s/--/\&ndash;/g 

# strip out [htmlonly] 
s/\[htmlonly\]//g 




