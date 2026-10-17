# =============================================================
# Exercise 2: What happens to wheat-flour prices after a disaster?
# Building an event-study plot one variable at a time
# =============================================================
# Data: data/event_study.csv
# Each row is an estimated effect on wheat-flour prices, for one
# disaster type, drier or wetter regions, and one month
# before (negative) or after (positive) the disaster.
# These are the estimates behind Figures 2 to 4 of D'Amico (2026, ERL).

# install.packages("ggplot2")   # run once if ggplot2 is not installed
library(ggplot2)

es <- read.csv("data/event_study.csv")
head(es)

# Start with floods only
floods <- subset(es, disaster == "Flood")

# -------------------------------------------------------------
# Stage 1: two variables
# x = months since the flood, y = estimated effect on prices
# (just the drier regions for now)
# -------------------------------------------------------------
drier <- subset(floods, region_climate == "Drier")

p1 <- ggplot(drier, aes(x = month, y = effect)) +
  geom_line() +
  geom_point()
p1

# -------------------------------------------------------------
# Stage 2: add a third variable with colour
# Drier vs. wetter regions. Do they respond the same way?
# -------------------------------------------------------------
p2 <- ggplot(floods, aes(x = month, y = effect, colour = region_climate)) +
  geom_line() +
  geom_point()
p2

# -------------------------------------------------------------
# Stage 3: show uncertainty and reference lines
# The shaded band is the 95% confidence interval.
# The vertical line marks the month of the flood,
# the horizontal line marks "no effect".
# -------------------------------------------------------------
p3 <- ggplot(floods, aes(x = month, y = effect,
                         colour = region_climate, fill = region_climate)) +
  geom_hline(yintercept = 0, linetype = "dashed", colour = "grey45") +
  geom_vline(xintercept = 0, linetype = "dashed", colour = "grey45") +
  geom_ribbon(aes(ymin = lower, ymax = upper), alpha = 0.15, colour = NA) +
  geom_line() +
  geom_point()
p3

# -------------------------------------------------------------
# Stage 4: add a fourth variable with panels
# One panel per disaster type, using the full dataset
# -------------------------------------------------------------
p4 <- ggplot(es, aes(x = month, y = effect,
                     colour = region_climate, fill = region_climate)) +
  geom_hline(yintercept = 0, linetype = "dashed", colour = "grey45") +
  geom_vline(xintercept = 0, linetype = "dashed", colour = "grey45") +
  geom_ribbon(aes(ymin = lower, ymax = upper), alpha = 0.15, colour = NA) +
  geom_line() +
  geom_point(size = 1) +
  facet_wrap(~ disaster)
p4

# -------------------------------------------------------------
# Stage 5: make it readable
# -------------------------------------------------------------
cols <- c("Drier" = "#00FFFF", "Wetter" = "#FF69B4")

p5 <- p4 +
  scale_colour_manual(values = cols) +
  scale_fill_manual(values = cols) +
  scale_x_continuous(breaks = seq(-6, 12, 3)) +
  labs(x = "Months since the disaster",
       y = "Effect on wheat-flour price",
       colour = "Regional climate", fill = "Regional climate") +
  theme_minimal(base_family = "serif", base_size = 13) +
  # a dark look, like the figures in the HSS paper
  theme(plot.background  = element_rect(fill = "black", colour = NA),
        text             = element_text(colour = "white"),
        axis.text        = element_text(colour = "grey80"),
        strip.text       = element_text(colour = "white"),
        panel.grid       = element_line(colour = "grey25"),
        panel.grid.minor = element_blank(),
        legend.position  = "bottom")
p5

# -------------------------------------------------------------
# Save your figure
# -------------------------------------------------------------
dir.create("figures", showWarnings = FALSE)
ggsave("figures/exercise2.png", p5, width = 9, height = 6, dpi = 300)

# Try it yourself:
#   1. Go back to Stage 3 and make the same plot for droughts.
#   2. Why is the band so wide for extreme temperature in wetter regions?
#      (Hint: count the rows with table(es$disaster, es$region_climate).)
#   3. Try facet_wrap(~ region_climate) with colour = disaster instead.
#      Which version tells the story better?
