---
title: 'Epidemic modeling of CoVID-19 pandemic'
tags:
  - Epidemic modelling
  - Age-structured SEIR model
  - CoVID-19
  - SARS-CoV-2
authors:
  - name: Felizitas Eichner
    orcid: 0000-0002-5415-0456
    affiliation: 1
  - name: Lukas Heumos
    orcid: 0000-0002-8937-3457
    affiliation: 2
  - name: Janne Solanpää
    orcid: 0000-0001-9382-6474
    affiliation: 3
affiliations:
 - name: Institute for Clinical Epidemiology and Biometry, 97080, Würzburg, Germany
   index: 1
 - name: University of Tübingen/Quantitative Biology Center,  Auf der Morgenstelle 10, Tübingen, Germany
   index: 2
 - name: Tampere University/Computational Physics Laboratory, Tampere 33720, Finland
   index: 3
date: 08 April 2020
bibliography: paper.bib
---

# Introduction

In late 2019, a previously unknown virus began spreading within the population of the Wuhan-city 
in the Hubei province of China [@Huang-Jan2020]. The virus, identified as a new type of coronavirus [@WHO-sitrep1],
has since spread over the globe as a pandemic of an unprecedented scale [@WHO-press-pandemic,@WHO-sitrep78].

Fast spread and seriousness of the novel coronavirus disease (*CoVID-19*) has prompted international and national
actions to slow the spread of CoVID-19 and mitigate its impact on society [TODO citation].
Due to novelty of the disease, its clinical and epidemiological traits are largely uncertain [TODO] and
under active investigation [TODO]. This has forced policymakers around the globe to introduce a variety of
restrictions, many of which are based on imprecise models and forecasts due to uncertainties in model parameters [TODO].

In this work we address the parameter uncertainties and modeling difficulties. We provide a review
of previous models used in analyzing and forecasting the CoVID-19 epidemic in different geographical locations;
followed by a summary of the most important epidemiological parameters in the reviewed studies.
Next, we have developed a Python software package [*SEIR*](https://github.com/covid19-bh-biostats/seir/) 
implementing a modular SEIR-model that can be used for epidemic forecasting including, e.g., age-structure, 
social contact patterns, and restriction policies of the area of interest. We use the *SEIR* package
to fit the model parameters in various geographical locations and continue with a pattern-search among the 
estimated parameters. We conclude this paper with a summary and outlook.

# Previous works on modeling COVID-19 epidemics



## Epidemic parameters

Table 1
| Header 1 | Header 2 |
| -------- | -------- |
| item 1 | item 2 |
| item 3 | item 4 |

# SEIR software package

Please keep sections to a maximum of three levels, even better if only two levels.

# Country-dependent epidemic parameters 

## Parameter estimation methods
Please keep sections to a maximum of three levels.

## Data sources

Please remember to introduce tables (see Table 1) before they appear on the document. We recommend to center tables, formulas and figure but not the corresponding captions. Feel free to modify the table style as it better suits to your data.



Remember to introduce figures (see Figure 1) before they appear on the document. 

![BioHackrXiv logo](./biohackrxiv.png)
 
Figure 1. A figure corresponding to the logo of our BioHackrXiv preprint.

# Patterns in location-specific epidemic parameters 


# Conclusions

We recommend to include some discussion or conclusion about your work. Feel free to modify the section title as it fits better to your manuscript.

# Future work

And maybe you want to add a sentence or two on how you plan to continue. Please keep reading to learn about citations and references.

For citations of references, we prefer the use of parenthesis, last name and year. If you use a citation manager, Elsevier – Harvard or American Psychological Association (APA) will work. If you are referencing web pages, software or so, please do so in the same way. Whenever possible, add authors and year. We have included a couple of citations along this document for you to get the idea. Please remember to always add DOI whenever available, if not possible, please provide alternative URLs. You will end up with an alphabetical order list by authors’ last name.

# Jupyter notebooks, GitHub repositories and data repositories

* [SEIR-package](https://github.com/covid19-bh-biostats/seir/) — a Python software package for epidemic modeling
* And remember, software and data need a license for them to be used by others, no license means no clear rules so nobody could legally use a non-licensed research object, whatever that object is

# Acknowledgements
This work was done within the [COVID-19 Biohackathon of April 2020](https://github.com/virtual-biohackathons/covid-19-bh20).

# References

Leave thise section blank, create a paper.bib with all your references.
