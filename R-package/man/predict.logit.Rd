\name{predict.logit}
\alias{predict.logit}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Prediction for an object with S3 class \code{"logit"}
}
\description{
Predicting responses of the given design data.
}
\usage{
\method{predict}{logit}(object, newdata, lambda.idx = c(1:3), p.pred.idx = c(1:5), \dots)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
  An object with S3 class \code{"logit"} 
  }
  \item{newdata}{
  An optional data frame in which to look for variables with which to predict. If omitted, the traning data of the are used.
  }
  \item{lambda.idx}{
  The indices of the regularizaiton parameters in the solution path to be displayed. The default values are \code{c(1:3)}.
  }
  \item{p.pred.idx}{
  The indices of the predicted response vectors in the solution path to be displayed. The default values are \code{c(1:5)}.
  }
  \item{\dots}{
  Arguments to be passed to methods.
  }
}
\details{
\code{predict.logit} produces predicted values of the responses of the \code{newdata} from the estimated \code{beta} values in the \code{object}, i.e.
\deqn{
    \hat{p} = \frac{e^{\hat{\beta}_0 + X_{new} \hat{\beta}}}{1+e^{\hat{\beta}_0 + X_{new} \hat{\beta}}}.
    }\cr
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
  \item{p.pred}{
  The predicted response vectors based on the estimated models.
  }
}
\author{
Jason Ge, Xingguo Li, Mengdi Wang, Tong Zhang, Han Liu and Tuo Zhao\cr
Maintainer: Jason Ge <jiange@princeton.edu>
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{picasso}} and \code{\link{picasso-package}}.
}