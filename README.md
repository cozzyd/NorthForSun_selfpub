# NorthForSun Self-Publication resources. 

Tools used to produce print and ebook versions of North for Sun. The code is
made available under the GPLv3 license (see LICENSE), however the book e
excerpt and all images are all rights reserved Marie Deaconu-Baylon. For more
information, see [http://mariedeaconubaylon.com](http//mariedeaconubaylon.com) 


[createspace.sty](https://github.com/aginiewicz/createspace) is required for LaTeX and not included in this distribution (you can just put the file in the same directory). 

[kindlegen](https://www.amazon.com/gp/feature.html?docId=1000765211)  from Amazon is required for .mobi and also not included in this distribution (you can just put the file in the same directory).


Ad-hoc custom formatting syntax was used for the .txt files, which is then converted to either html or tex using sed scripts. The formatting is documented briefly here. To modify, you may modify totex.sed and tohtml.sed: 

- custom html syntax is inserted with [htmlonly] at the start of the line 
- custom latex syntax is inserted with [latexonly] at the start of the line 
- All chapters are just numbered and are on a line by themselves e.g. Chapter 1
- Each part starts with XXXXX. For now, since parts aren't numbered, you also have to add an anchor (if you want one there) manually.
- `#` is used for emphasis (italics) 
- `****` or `~~~` is used for rules 
- @ is used for smallcaps




