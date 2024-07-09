library("tidyverse")
library("viridis")
set1 <- read.csv("/data/set1.csv")

ggplot(data = set1) +
  geom_boxplot(mapping = aes(x = Status, y = Wakefulness, fill = Group)) +
  #scale_fill_viridis_d(option = "C") +
  scale_y_continuous(limits = c(0,150)) +
  labs(title = "Effect of oral caffeine intake on the perceived wakefulness of healthy individuals and ADHD patients", subtitle = "30 mg of caffeine", caption = "100% perceived wakefulness corresponds to normal wake alertness.", x = "Health status", y = "Perceived wakefulness (%)", fill = "Application") + 
  theme_bw()
