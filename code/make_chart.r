## @knitr makeCharts

library(stringr)
ggplot(sdat, 
       aes(x = weather_source, fill = female)) + 
        geom_bar(position="dodge",colour="black") +
        scale_x_discrete(labels = function(x) str_wrap(x, width = 20)) +      # str_wrap: wrap long responses choices to fit better
        ggtitle(paste0("Weather Source by Gender: ",
                       params$region," Region")) +
        xlab("Weather Source Preference") +
        ylab("Number of Respondents") +
        scale_fill_manual(values=c("skyblue","palevioletred"),
                          name="Gender",
                          breaks=c(FALSE,TRUE),
                          labels=c("Male", "Female")) +
        coord_flip() +        # Horizontal bar chart instead of vertical
        theme_fivethirtyeight()