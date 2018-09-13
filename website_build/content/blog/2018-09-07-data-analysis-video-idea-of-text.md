---
title: 'RDM for data analysis'
author: Julien Colomb
date: '2018-09-07'
slug: data-analysis-video-idea-of-text
categories:
  - idea_new_mat
tags:
  - videos
  - CC0
  - arguments
  - content_notform
banner : "img/newidea.png"  
---

# What are the advantages RDM brings to data analyis?

Please keep in touch if you think you can help or point to existing material that answer this question.

We would like to answer shortly this quesion in a video. After an introduction stating that RDM can help with the data analysis, and that the type of analysis you do will impact your RDM, we will show the generic of our video series. We will then have 2 minutes  to present 4 to 7 main points where data management is either facilitating the analysis or allowing a more complexe/interesting analysis.



So far, I came up with these:

### Rule 1: Make the data computer readable

Digital data can be quite easily transformed and analysed using programming language like R and python. While you do not have to learn these languages (yet), knowing what they require in terms or readability might save you time and efforts. 

- Tabular data/metadata shall be tidy
- Keep your primary data (raw data) untouched (i.e. no copy/paste  in raw data, NEVER)
- If you have many datasets, make sure you are able to automate the file imports. An index of datasets may be a good practical solution. 
- Separate raw data, derived data, analysis and analysis results in different folders
- Make sure to document each step of your analysis.


### Rule 2: Know how you will analyse your data beforehand

The analysis you will do (the statistics you wanna use as well as the software you will use) might require your data to be in a certain format, it will probably affect how much data you need to come to a robust conclusion and may even affect the number of variables you indeed need to record. 

This is especially true for metadata and using an existing standard is easier than transforming what you collecting into that standard afterwards.

### Rule 3: Be ready for the unexpected

The data you collect today may be analysed in 2 years and published in 5. During that time, a lot can happen. People may prove that the analysis you planned is not fitted to your problem, or you may realise that a variable you did not plan to collect is crucial. Maybe a new dataset will appear that you will need to compare your own data to, or new people will help you with your project and need access to your data,...

Plan for your data to be re-usable. At best, get some colleague to watch your data and see if they can understand it.
The unexpected may also be good, maybe halfway in your tedious manual analysis, you will discover a way to automatize it. So keep track of links between raw and derived data.

### Rule 4: Merging is easier than splitting

When recording variables, be as specific as you can. It is very easy to pool two categories into one but very difficult (and sometimes impossible) to separate a group during the analysis. 

Similarly quantitative variables are easier to analyse than qualitative ones. You can always create categories from quantitative indications, not the way around. 

As an example, if your question is "does obese mice make longer naps", record the mice weight not its category. Analysing a correlation between weight and length of naps is more powerful than having the two categories.







<!----
# Intro: about 40-60s

Researcher's best moment is when they get to analyze and interpret data.

Unfortunately, it’s common to spend many tedious hours cleaning and wrangling the data into a usable format, but it does not have to be this way. A good data management will fuel your analysis, making the process easier, faster and error free.



 # Main text

This video lists 4 main principles of data management which will help you with the analysis. 


1. data format should fit the analysis

2. about making it computer readable
-> format transformation is easy
-> spreadsheet

How:
documentation and metadata
tidy data
data organisation, use indexes

3. data quality
open refine

check (look for stories, too)
- data carpentry 
- open refine
---->

