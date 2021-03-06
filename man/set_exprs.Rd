% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/SCESet-methods.R
\docType{methods}
\name{set_exprs<-}
\alias{set_exprs}
\alias{set_exprs<-}
\alias{set_exprs<-,SCESet,ANY,matrix-method}
\title{Assignment method for the new elements of an SCESet object.}
\usage{
set_exprs(object, name) <- value

\S4method{set_exprs}{SCESet,ANY,matrix}(object,name)<-value
}
\arguments{
\item{object}{a \code{SCESet} object.}

\item{name}{character string giving the name of the slot to which the data
matrix is to be assigned (can already exist or not).}

\item{value}{a numeric or integer matrix matching the dimensions of the other
elements of the \code{assayData} slot of the \code{SCESet} object.}
}
\value{
NULL, but adds expression data to the SCESet object
}
\description{
The assayData slot of an SCESet object holds the expression data matrices.
This functions makes it convenient to add new transformations of the
expression data to the assayData slot.
}
\examples{
data("sc_example_counts")
data("sc_example_cell_info")
example_sceset <- newSCESet(countData = sc_example_counts)
set_exprs(example_sceset, "scaled_counts") <- t(t(counts(example_sceset)) /
colSums(counts(example_sceset)))
get_exprs(example_sceset, "scaled_counts")[1:6, 1:6]
}
\author{
Davis McCarthy
}

