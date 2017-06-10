# for latex 


# strip out [latexonly] 
s/\[latexonly\]//g 

# delete lines that have [htmlonly] 
/\[htmlonly\]/d 

## Escape ampersands
s/&/\\\&/g

## Escape percentage
s/%/\\%/g

## Turn Chapter into \chapter
s/Chapter [0-9]*/\\chapter{}/ 

#### Use XXXXX to signify part

s/XXXXX\(.*\)/\\part{\1}/ 


# Use # for emphasis
s/#\([^#]*\)#/\\emph{\1}/g 

#Correct spaces after these
s/Dr\. /Dr.~/g
s/Mr\. /Mr.~/g
s/Mrs\. /Mrs.~/g
s/Ms\. /Ms.~/g


# Rules
s/\*\*\*\*/\\mdbrule/g
s/~~~/\\mdbrule/g

#with bolding (currently disabled) 
#s/\^\([^\^]*\)\^/\\textbf{\1}/g 
#no bolding 
s/\^//g


#small cpas
s/@\([^@]*\)@/\\textsc{\1}/g 



