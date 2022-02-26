
np_jail <- read.csv("incarceration_trends.csv")



library("dplyr")

most_pop_state <- np_jail %>% 
  filter(total_pop == max(total_pop)) %>% 
  pull(state)

most_pop_num <- np_jail %>% 
  filter(total_pop == max(total_pop)) %>% 
  pull(total_pop)

female_in_Wa_2001 <- np_jail %>% 
  filter(state == "WA") %>% 
  filter(year == 2001) %>% 
  filter(female_pop_15to64 == max(female_pop_15to64)) %>% 
  pull(female_pop_15to64)

female_in_Wa_2010 <- np_jail %>% 
  filter(state == "WA") %>% 
  filter(year == 2010) %>% 
  filter(female_pop_15to64 == max(female_pop_15to64)) %>% 
  pull(female_pop_15to64)

diff_female <- female_in_Wa_2010 - female_in_Wa_2001

