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
  - name: Fotis Psomopoulos
    orcid: 0000-0002-0222-4273
    affiliation: 3
  - name: Janne Solanpää
    orcid: 0000-0001-9382-6474
    affiliation: 4
  - name: Cecilia Valenzuela
    orcid: 0000-0002-2774-4822
    affiliation: 5
affiliations:
 - name: Institute for Clinical Epidemiology and Biometry, 97080, Würzburg, Germany
   index: 1
 - name: University of Tübingen/Quantitative Biology Center,  Auf der Morgenstelle 10, Tübingen, Germany
   index: 2
 - name: Institute of Applied Biosciences, Centre for Research and Technology Hellas, 6th km Charilaou-Thermis rd, Thessaloniki, Greece
   index: 3 
 - name: Tampere University/Computational Physics Laboratory, Tampere 33720, Finland
   index: 4
- name: ETH Zurich, Switzerland
   index: 5
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

The produced SEIR model supports the following main parameters (a full list is available through the model documentation [here](https://seir.readthedocs.io/) )

Table 1: Outline of main parameters
| Parameter | Description |
| -------- | -------- |
| incubation_period | Incubation period of the disease in days. |
| infectious_period | How long a patient can infect others (in days) after the incubation period. |
| initial_R0  | Basic reproductive number of the disease |
| hospitalization_probability | Probability that an infected person needs hospitalization |
| hospitalization_duration | Average duration of a hospitalization in days |
| hospitalization_lag_from_onset | Average time (in days) from the onset of symptoms to admission to hospital |
| icu_probability | Probability that an infected person needs hospitalization. |
| icu_duration | Average duration of the need for intensive care in days. |
| icu_lag_from_onset | Average time (in days) from the onset of symptoms to admission to ICU. |
| death_probability | Probability that an infected person dies from the disease. |
| death_lag_from_onset | Average time from the onset of symptoms to death (in days). |
| population | The total population |

# SEIR software package

The python package implements SEIR modelling of covid19, and is available [here](https://github.com/covid19-bh-biostats/seir) under an [MIT License](https://github.com/covid19-bh-biostats/seir/blob/master/LICENSE).

A key aspect of the implementation is the support for multiple compartments (e.g. age groups, locations, etc), as well as the application of restrictions (e.g. social distancing, closing of schools etc) by introducing time-dependence in the infectivity rate.

The output of the package is always a `csv` file, with optional visualiazations. An example visualization of the results is shown in Figure 1.

![SEIR Model Output](./biohackrxiv.png)
 
Figure 1. A figure showing the output of the SEIR model package


# Country-dependent epidemic parameters 

## Parameter estimation methods
Please keep sections to a maximum of three levels.

## Data sources

All Data sources can be found in the [Project Github Dat Repository](https://github.com/covid19-bh-biostats/data)

Table 2: Data sources
| Data | Description |
| -------- | -------- |
| Global COVID-19 Daily Cases by Country | Country level data from Johns Hopkins University.|
| Spanish COVID-19 Daily Cases | Spanish COVID-19 cases, deaths, hospitalised and icu patients by day. Data from Spanish Government by datadista.|
| Policies Europe | Dataset with interventions taken in Europe by date.|
| UN Demographics Data | Population census datasets from United Nations Statistics Division|
| Climate data| Aggregate climate information per country (min/max/avg/std|


# Patterns in location-specific epidemic parameters 


# Conclusions

We recommend to include some discussion or conclusion about your work. Feel free to modify the section title as it fits better to your manuscript.

# Future work

The model is robust, but we are now implementing a Genetic Algorithm wrapper that fits all underlying SEIR parameters to a given series of data points. The ultimate goal is to produce "time-series" of the parameters, so that a more coherent study of the different values across multiple cases can be performed. This includes aspects such as correlation to weather conditions (temperature, humidity, UV exposure, etc), as well as patterns based on the phylogenetic distance of the particular strains.

# Jupyter notebooks, GitHub repositories and data repositories

* [SEIR-package](https://github.com/covid19-bh-biostats/seir/) — a Python software package for epidemic modeling
* And remember, software and data need a license for them to be used by others, no license means no clear rules so nobody could legally use a non-licensed research object, whatever that object is

# Acknowledgements
This work was done within the [COVID-19 Biohackathon of April 2020](https://github.com/virtual-biohackathons/covid-19-bh20).

# References

Leave thise section blank, create a paper.bib with all your references.
