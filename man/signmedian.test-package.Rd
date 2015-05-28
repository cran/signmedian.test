\name{signmedian.test-package}
\alias{signmedian.test-package}
\docType{package}
\title{
Perform Exact Sign Test and Asymptotic Sign Test in Large Samples
}
\description{
Perform sign test on one-sample data, which is one of the oldest non-parametric statistical methods. Assume that X comes from a continuous distribution with median = v ( unknown ). Test the null hypothesis H0: median of X v = mu ( mu is the location parameter and is given in the test ) v.s. the alternative hypothesis H1: v > mu ( or v < mu or v != mu ) and calculate the p-value. When the sample size is large, perform the asymptotic sign test. In both ways, calculate the R-estimate of location of X and the distribution free confidence interval for mu.
}
\details{
\tabular{ll}{
Package: \tab signmedian.test\cr
Type: \tab Package\cr
Version: \tab 1.5\cr
Date: \tab 2015-05-27\cr
License: \tab GPL-2)\cr
}
}
\author{
Yeyun Yu ,Ting Yang

Maintainer: Ting Yang<707237077@qq.com>
}
\references{
none.
}

\keyword{ package }

\examples{
##One-sample test
x<-c(-5,-3,-2,1,5,6,3,9,10,15,20,21)
signmedian.test(x,alternative = "greater",exact=TRUE)
signmedian.test(x,mu=3,alternative="two.sided",exact=FALSE)
##Two-sample test(paired data)
x<-c(-5,-3,-2,1,5,6,3,9,10,15,20,21)
y<-c(-1,-2,-3,1,2,3,4,2,6,8,9,10)
x<-y-x
signmedian.test(x,alternative = "greater",exact=TRUE)
}
