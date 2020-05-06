model_CART_avg <- function(split, formula,...) {
  recipe <- 
    recipe(formula, data = analysis(split)) %>%
    step_log(total_county_verified_content_loan, offset = 0.00001) %>%
    step_log(emp, offset = 0.00001) %>%
    step_log(payann, offset = 0.00001) %>%
    step_log(rcptot, offset = 0.00001) %>%
    step_log(payqrt1, offset = 0.00001) %>% 
    step_log(estab, offset = 0.00001) %>% 
    prep()
  
  analysis_data <- analysis(split) %>%
    bake(object = recipe, new_data = .)
  
  model <- decision_tree(mode = "regression") %>%
    set_engine("rpart") %>%
    fit(formula, data = analysis_data)
  
  assessment_data <- assessment(split) %>%
    bake(object = recipe, new_data = .)
  
  rmse <- bind_cols(
    assessment_data,
    predict(model, assessment_data)
  ) %>%
    rmse(truth = avg_county_eidl_loan, estimate = .pred) %>%
    pull(.estimate)
  
  return(rmse)
} 
