\name{signmedian.test}
\alias{signmedian.test}
\title{Perform Exact Sign Test and Asymptotic Sign Test in Large Samples}
\description{
Perform sign test on one-sample data, which is one of the oldest non-parametric statistical methods. Assume that X comes from a continuous distribution with median = v ( unknown ). Test the null hypothesis H0: median of X v = mu ( mu is the location parameter and is given in the test ) v.s. the alternative hypothesis H1: v > mu ( or v < mu or v != mu ) and calculate the p-value. When the sample size is large, perform the asymptotic sign test. In both ways, calculate the R-estimate of location of X and the distribution free confidence interval for mu.
}
\usage{
\method{signmedian}{test}(x,mu=0,
alternative=c("two.sided","less","greater"), 
conf.level=0.95,exact=TRUE, \dots)
}
\arguments{
  \item{x}{numeric vector of data values.}
  \item{mu}{the location parameter, it is a number specifying an optional parameter used to 
form the null hypothesis.}
  \item{alternative}{a character string specifying the alternative hypothesis, must be one 
of "two.sided" , "greater" or "less". You can specify just the initial letter.}
  \item{conf.level}{confidence level of the confidence interval.}
  \item{exact}{a logical indicating whether an exact p-value should be computed.}
  \item{...}{further arguments to be passed to or from methods.}
}
\details{
This is a simple non-parametric statistical method. Perform simple sign test on one-sample 
data like wilcox.test without ranking. Assume that X comes from a continuous distribution 
with median = v ( unknown ). Test the null hypothesis H0: median of X v = mu ( mu is given in the test ) v.s. the alternative hypothesis H1: v > mu ( or v < mu or v != mu ) and calculate the p-value. 
When the sample size is large, perform the asymptotic sign test( with continuity correction ). 
In both exact and asymptotic sign tests, calculate the R-estimate of location of X and the distribution free confidence interval for location parameter mu.
This can also perform a test of the paired data ( X, Y ) if we redefine X with Y-X.
}
\value{
 \item{statistic}{the value of the test statistic with a name describing it.}
 \item{parameter}{the location parameter mu.}
 \item{p.value}{the p-value for the test.}	
 \item{alternative}{a character string describing the alternative hypothesis.}
 \item{conf.int}{a confidence interval for the location parameter.}
 \item{estimate}{an estimate of the location parameter. }
 \item{method}{the type of test applied.}
 \item{data.name}{a character string giving the names of the data.}	
}
\references{
none.
}
\author{
Ting Yang and Yeyun Yu
}
\note{
If you want to perform a test of the paired data ( X, Y ), please redefine X with Y-X and 
then perform the test.
}

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
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ signtest }
\keyword{ non-parametric }% __ONLY ONE__ keyword per line
