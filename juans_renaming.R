library(dplyr)

df <- read.csv("csv/transfer_dataset_final.csv")

df_mine <- df %>%
  select(2, 4, 57:74)

column_names <- colnames(df_mine)

column_names<- as.vector(column_names)

column_names

renamed_columns <- c("player", "season", "fouls_drawn_to_shot", "def_action_to_shot",
                     "goal_creating_action", "comp_live_pass_to_goal", "comp_dead_pass_to_goal", "takeon_to_goal",
                     "shot_to_goal_shot", "fouls_drawn_to_goal","def_action_to_goal", "carries", "tot_carry_distance","prog_carry_distance",
                     "prog_carries","carries_into_final_third","carries_into_box", "fail_to_control","lose_control_due_to_tkl",
                     "successfully_rec_pass")
renamed_columns

colnames(df_mine) <- renamed_columns

write.csv(df_mine, "csv/juans_subset.csv", row.names = FALSE)

length(column_names) == length(renamed_columns)

