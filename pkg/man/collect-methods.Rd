\docType{methods}
\name{collect}
\alias{collect}
\alias{collect,RDD-method}
\alias{collectPartition}
\alias{collectPartition,RDD,integer-method}
\alias{collectPartition,integer,RDD-method}
\title{Collect elements of an RDD}
\usage{
collect(rdd, ...)

\S4method{collect}{RDD}(rdd, flatten = TRUE)

collectPartition(rdd, partitionId)

\S4method{collectPartition}{RDD,integer}(rdd, partitionId)
}
\arguments{
  \item{rdd}{The RDD to collect}

  \item{...}{Other optional arguments to collect}

  \item{flatten}{FALSE if the list should not flattened}

  \item{partitionId}{the partition to collect (starts from
  0)}
}
\value{
a list containing elements in the RDD
}
\description{
\code{collect} returns a list that contains all of the
elements in this RDD.

\code{collectPartition} returns a list that contains all of
the elements in the specified partition of the RDD.
}
\examples{
\dontrun{
sc <- sparkR.init()
rdd <- parallelize(sc, 1:10, 2L)
collect(rdd) # list from 1 to 10
collectPartition(rdd, 0L) # list from 1 to 5
}
}

