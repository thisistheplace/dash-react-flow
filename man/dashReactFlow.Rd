% Auto-generated: do not edit by hand
\name{dashReactFlow}

\alias{dashReactFlow}

\title{DashReactFlow component}

\description{

}

\usage{
dashReactFlow(id=NULL, defaultEdgeOptions=NULL, edges=NULL, nodes=NULL)
}

\arguments{
\item{id}{Character. The ID used to identify this component in Dash callbacks.}

\item{defaultEdgeOptions}{Named list. The default edge options}

\item{edges}{List of named lists. The edges which connect the flow chart}

\item{nodes}{List of lists containing elements 'id', 'data', 'position'.
those elements have the following types:
  - id (character; optional)
  - data (optional): . data has the following type: lists containing elements 'label'.
those elements have the following types:
  - label (character; optional)
  - position (optional): . position has the following type: lists containing elements 'x', 'y'.
those elements have the following types:
  - x (numeric; optional)
  - y (numeric; optional)s. The nodes which make up the flow chart}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

