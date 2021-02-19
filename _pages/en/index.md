---
altLangPrefix: index
authorName: Natural Resources Canada
authorUrl:
contentTitle:
  fr: OpenDRR - Réduction des risques de catastrophe ouverte
  en: OpenDRR - Open Disaster Risk Reduction
dateModified: 2021-02-18
description:
  en: Available datasets
  fr: Ensembles de données disponibles
noContentTitle: true
pageclass: wb-prettify all-pre
subject:
  en: [GV Government and Politics, Government services]
  fr: [GV Gouvernement et vie politique, Services gouvernementaux]
title: OpenDRR - Canada.ca
---

# {{ page.contentTitle.en }}

_[Note: This page is currently a work-in-progress proof-of-concept.]_

Welcome!

The OpenDRR platform is middleware between hazard or risk modeling environments like [OpenQuake](https://www.globalquakemodel.org/openquake) and end users who need to understand and evaluate risk to make economic and policy decisions.

The end-user interface will operate as a web application using standard web browsers in desktop, tablet or hand-held device environments.

## Downloads

* [OpenDRR Data Downloads](https://opendrr.github.io/data/en/) at <https://opendrr.github.io/data/en/>

## Documentation

* Coming soon: _A Federated OpenDRR Platform to Support Disaster Resilience Planning in Canada: High Level Requirements_

## Video Introduction

<div style="text-align: center;">
<iframe width="560" height="315" src="https://www.youtube.com/embed/-M3NHo-aW_g" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
</div>

For more information, see [Terra-Cognita: How can we Accelerate Disaster Resilience Planning with OpenData?](https://www.urbc.ca/terra-cognita) organized by the [URBC 2020 Online Symposium](https://www.urbc.ca/).

## For Developers

* [Parent GitHub repository for the OpenDRR Platform](https://github.com/OpenDRR/opendrr-platform) at <https://github.com/OpenDRR/opendrr-platform>


{% if false %}

{{page.description.en}}

<ul>
  {% for page in site.pages %}
  {% if page.path contains 'en/data' %}
    <li>
      <a href="{{ site.baseurl }}{{ page.url }}">{{ page.contentTitle.en }}</a>
    </li>
    {% endif %}
  {% endfor %}
</ul>

{% endif %}
