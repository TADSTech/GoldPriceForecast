#set document(
  title: "Gold Price Forecasting",
  author: "Michael Tunwashe (TADS)"
)

#set text(size: 11pt)
#set page(margin: 1in)

#title()
#text(
  "Michael Tunwashe (TADS)",
  size: 10pt,
  style: "italic",
  weight: 20
)

= Forecasting Daily Gold Prices 7–30 Days Ahead Using Simple Time-Series Models

== Objective
This brief outlines a practical methodology to forecast daily gold prices 7–30 days into the future using time-series forecasting models. Accurate short-term forecasts enable traders, investors, and financial institutions to optimize portfolios and manage price risk effectively.

== Data Source & Tools
Historical daily gold price data (e.g., closing prices) is sourced from financial data providers such as Yahoo Finance. The forecasting solution is implemented using:
- *Python*: Core programming language for data processing and modeling.
- *pandas*: For data loading, manipulation, and time-series preprocessing.
- *statsmodels*: For fitting and forecasting with ARIMA and exponential smoothing models.
- *matplotlib*: For visualizing historical prices, trends, and forecast confidence intervals.

== Methodology

*Data Preparation*: Load historical gold price data and check for stationarity using the Augmented Dickey-Fuller (ADF) test. Apply differencing if necessary to stabilize the mean.

*Model Selection*: Three simple time-series models are evaluated:
- *Moving Average (MA)*: Smooths noise; simple but limited predictive power.
- *Autoregressive (AR)*: Captures momentum; useful for short-term forecasts.
- *ARIMA(p,d,q)*: Combines AR, differencing (d), and MA; balances complexity and interpretability.

*Forecasting*: Fit each model to historical data (minimum 2–5 years recommended). Generate point forecasts and 95% confidence intervals for days 7–30. Validate using Mean Absolute Error (MAE) on holdout test sets.

== Expected Outcomes
ARIMA models typically achieve MAE of 1–3% for 7–14 day horizons; accuracy degrades for 15–30 day forecasts due to increasing uncertainty. Results are visualized with matplotlib showing historical prices, fitted trends, and forecast bands.

== Conclusion
This lightweight, interpretable approach provides actionable 7–30 day gold price forecasts without requiring complex machine learning. Future enhancements may incorporate exogenous variables (USD index, interest rates) for improved accuracy.