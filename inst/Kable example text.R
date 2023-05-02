data()

T1cap <- "TITLE TEXT Table 1"
FN1   <- paste("FOOTNOTE TEXT Table 1")

kable(T1, format = "latex", booktabs = TRUE, caption = T1cap, 
      digits = 2, format.args = list(big.mark = ",", nsmall = 2),
      linesep = c('', '', '', '', '', '\\addlinespace')) %>%
  kable_styling(latex_options = c("repeat_header", "scale_down")) %>% 
  column_spec(c(6, 10), italic = TRUE) %>% 
  column_spec(11, italic = TRUE, bold = TRUE) %>% 
  add_header_above(c(" ", " ", "CSTAT Activity Category" = 4, 
                     "Client Activity Category" = 4, " ")) %>% 
  footnote(general = FN1, general_title = "Note: ", footnote_as_chunk = TRUE)




```{r T2, echo = FALSE, eval = TRUE}
T2cap <- paste("TITLE TEXT Table 1")
FN2   <- paste("FOOTNOTE TEXT Table 1")

# Generate Table 2. 
kable(T2, format = "latex", booktabs = TRUE, longtable = TRUE, caption = T2cap, 
      digits = 0, format.args = list(nsmall = 0),
      linesep = c('', '', '', '', '', '\\addlinespace')) %>%
  kable_styling(latex_options = c("repeat_header")) %>% 
  column_spec(6, italic = TRUE, bold = TRUE) %>% 
  add_header_above(c(" ", " ", "Level of Service" = 3, " ")) %>% 
  footnote(general = FN2, general_title = "Note: ", footnote_as_chunk = TRUE)
```