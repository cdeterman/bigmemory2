\name{resizeBM}
\alias{resizeBM}
\title{Resizes a ``big.matrix'' in place}
\description{
  This is needed to change the size of a \code{big.matrix} without 
  the need to create a separate object.  Warning, this completely overwrites
  the initial structure and requires reshaping again if you wish to access
  the original structure again.
}
\usage{
  resizeBM(x, nRows = 0, nCols = 0)
}
\arguments{
  \item{x}{a \code{\link{big.matrix}}.}
  \item{nRows}{number of rows to increment(+) or decrement(-)}
  \item{nCols}{number of columns to increment(+) or decrement(-)}
}
\details{
  This is needed to resize a \code{\link{big.matrix}}, because traditional
  \R syntax would only require a new independent pointer.  This allows for
  in-place reshaping.
}
\value{
  a The original \code{\link{big.matrix}} is returned with reshaped dimensions.
}
%\author{John W. Emerson and Michael J. Kane}
\seealso{\code{\link{big.matrix}}}
\examples{
  
  x <- as.big.matrix(matrix(1:12, 3, 4))
  x@address
  resize(x, 1, -1)    # Increase row length by 1, decrease col length by 1
  x@address   # address the same as initial
  head(x)
  
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{methods}
