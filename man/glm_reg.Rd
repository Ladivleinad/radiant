% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/glm_reg.R
\name{glm_reg}
\alias{glm_reg}
\title{Generalized linear models (GLM)}
\usage{
glm_reg(dataset, glm_dep_var, glm_indep_var, data_filter = "",
  glm_levels = "", glm_link = "logit", glm_int_var = "", glm_check = "")
}
\arguments{
\item{dataset}{Dataset name (string). This can be a dataframe in the global environment or an element in an r_data list from Radiant}

\item{glm_dep_var}{The dependent variable in the logit (probit) model}

\item{glm_indep_var}{Independent variables in the model}

\item{data_filter}{Expression entered in, e.g., Data > View to filter the dataset in Radiant. The expression should be a string (e.g., "price > 10000")}

\item{glm_levels}{The level in the dependent variable defined as _success_}

\item{glm_link}{Link function for _glm_ ('logit' or 'probit'). 'logit' is the default}

\item{glm_int_var}{Interaction term to include in the model (not implement)}

\item{glm_check}{Optional output or estimation parameters. "vif" to show the multicollinearity diagnostics. "confint" to show coefficient confidence interval estimates. "odds" to show odds ratios and confidence interval estimates. "standardize" to output standardized coefficient estimates. "stepwise" to apply step-wise selection of variables}
}
\value{
A list with all variables defined in glm_reg as an object of class glm_reg
}
\description{
Generalized linear models (GLM)
}
\details{
See \url{http://mostly-harmless.github.io/radiant/quant/glm_reg.html} for an example in Radiant
}
\examples{
result <- glm_reg("titanic", "survived", c("pclass","sex"), glm_levels = "Yes")
}
\seealso{
\code{\link{summary.glm_reg}} to summarize the results

\code{\link{plot.glm_reg}} to plot the results

\code{\link{predict.glm_reg}} to generate predictions
}
