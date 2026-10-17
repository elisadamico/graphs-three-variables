# =============================================================
# Does the same disaster hit food prices the same way everywhere?
# A three-variable bar chart, built in stages
# =============================================================
# Data: data/pooled_effects.csv (8 rows)
# Each row is the average effect of a disaster on wheat-flour
# prices over the 13 months after it, in drier or wetter regions.
# These are the main results of D'Amico (2026, ERL).
#
# The three variables:
#   disaster        (Flood, Drought, Storm, Extreme temperature)
#   region_climate  (Drier or Wetter)
#   effect          (change in wheat-flour price)

# install.packages("ggplot2")   # run once if ggplot2 is not installed
library(ggplot2)

d <- read.csv("data/pooled_effects.csv")
d

# -------------------------------------------------------------
# Stage 1: one variable on each axis
# This puts both bars for each disaster in the same spot, so
# the drier and wetter results are stacked on top of each other.
# -------------------------------------------------------------
p1 <- ggplot(d, aes(x = disaster, y = effect)) +
  geom_col()
p1

# -------------------------------------------------------------
# Stage 2: add the third variable with colour
# position = "dodge" puts the bars side by side
# -------------------------------------------------------------
p2 <- ggplot(d, aes(x = disaster, y = effect, fill = region_climate)) +
  geom_col(position = "dodge")
p2

# -------------------------------------------------------------
# Stage 3: show uncertainty
# Error bars show the 95% confidence interval. If a bar's
# interval crosses zero, we cannot rule out "no effect".
# -------------------------------------------------------------
p3 <- p2 +
  geom_errorbar(aes(ymin = lower, ymax = upper),
                position = position_dodge(width = 0.9), width = 0.2) +
  geom_hline(yintercept = 0)
p3

# -------------------------------------------------------------
# Stage 4: make it readable
# -------------------------------------------------------------
p4 <- ggplot(d, aes(x = disaster, y = effect, fill = region_climate)) +
  geom_col(position = "dodge") +
  geom_errorbar(aes(ymin = lower, ymax = upper),
                position = position_dodge(width = 0.9), width = 0.2,
                colour = "white") +
  geom_hline(yintercept = 0, colour = "white") +
  scale_fill_manual(values = c("Drier" = "#00FFFF", "Wetter" = "#FF69B4")) +
  labs(x = NULL,
       y = "Effect on wheat-flour price",
       fill = "Regional climate") +
  theme_minimal(base_family = "serif", base_size = 13) +
  # a dark look, like the figures in the HSS paper
  theme(plot.background  = element_rect(fill = "black", colour = NA),
        text             = element_text(colour = "white"),
        axis.text        = element_text(colour = "grey80"),
        strip.text       = element_text(colour = "white"),
        panel.grid       = element_line(colour = "grey25"),
        panel.grid.minor = element_blank(),
        legend.position  = "bottom")
p4

# -------------------------------------------------------------
# Save your figure
# -------------------------------------------------------------
dir.create("figures", showWarnings = FALSE)
ggsave("figures/my_chart.png", p4, width = 7, height = 5, dpi = 300)

# Try it yourself:
#   1. Swap x and fill: aes(x = region_climate, fill = disaster).
#      Which version makes the main finding easier to see?
#   2. Try geom_point() + geom_errorbar() with no bars at all.
#      This is called a coefficient plot, and it is common in papers.
#   3. Which disaster shows the biggest difference between
#      drier and wetter regions?
