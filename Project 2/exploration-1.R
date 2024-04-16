csv_file <- ("https://docs.google.com/spreadsheets/d/e/2PACX-1vRQzTNG-VqFIOEq2oRWq4m4K0SxDHf0MB9QJWy88WTDK4ZHQiUgZu9NXoZ_AaBCCAB7Xsrg0qd-tVAa/pub?output=csv")

learning_data <- 
  read_csv(csv_file) %>%
  rename(expected_years_mastery = 2, # Expected number of years for mastery
       expected_number_languages = 3, # Number of languages form taker feels required
       
       # Language Learning Difficulty
       learn_diff_python = 4,
       learn_diff_java = 5,
       learn_diff_c = 6,
       learn_diff_c_plus = 7,
       learn_diff_r_project = 8,
       learn_diff_matlab = 9,
       
       # Language Usefulness
       useful_python = 10,
       useful_java = 11,
       useful_c = 12,
       useful_c_plus = 13,
       useful_r_project = 14,
       useful_matlab = 15,
       
       # Languages form taker knows
       known_languages = 16,
       # Sites form taker uses for programming
       sites_used = 17)

print(learning_data)

# A tibble to get data for expected years for language mastery and required number of languages for a programmer
python_data <- 
  tibble(difficulty = learning_data$learn_diff_python, 
         usefullness = learning_data$useful_python)


# A tibble to get data for expected years for language mastery and required number of languages for a programmer
expected_data <- 
  tibble(years_mastery = learning_data$expected_years_mastery, 
         require_num_lang = learning_data$expected_number_languages)

print(head(expected_data))

# plots for the expected number of years for language mastery
expected_data  %>%
  ggplot() +
    geom_bar(aes(x = years_mastery), fill = "#B2C248") +
  labs(title = "How many years do people expect to master a language?",
       subtitle = "Number of expected years for mastery",
       caption = "Source: Survey given to family an friends",
       x = "Expected Number of Years for Mastery",
       y = "POpulation")

# plots for the percieved required number of known languages
expected_data  %>%
  ggplot() +
  geom_bar(aes(x = require_num_lang), fill = "#B2C248") +
  labs(title = "How many programming languages should you know?",
       subtitle = "Percieved number of required programming languages",
       caption = "Source: Survey given to family an friends",
       x = "Perceived Number of Languages to Know",
       y = "Population")

# plots for the python data
python_data  %>%
  ggplot() +
  geom_bar(aes(x = difficulty), fill = "#B2C248") +
  labs(title = "how hard is Python to Learn?",
       caption = "Source: Survey given to family an friends",
       x = "Percieved Learning Difficulty",
       y = "Population")

Python %>%
  view()

