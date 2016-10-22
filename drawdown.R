# drawdown.R
# Starting at a stock vs. bond allocation of X%, 
# returns the percentage decrease in stock value 
# that causes the stock vs. bond allocation to equal (X-Y)%.
# X = target allocation (desired percentage of portfolio in stocks)
# Y = percentage amount the client is willing to allow the portfolio to drift from the target allocation X
drawdown = function(X,Y) {
  x = X/100; y = Y/100;
  d = Y/(1-x+y);
  return(100*(d/X));
}