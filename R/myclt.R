#' myclt
#'
#' @param int n the sample size
#' @param int iter the number of samples
#'
#' @return hist(sm/n) a histogram of the sample means and sm/n the vector of sample means
#' @example myclt(1,2)
myclt=function(n,iter){
  y=runif(n*iter,0,5) # A
  data=matrix(y,nr=n,nc=iter,byrow=TRUE) #B
  sm=apply(data,2,sum) #C
  hist(sm/n)
  sm/n
}
