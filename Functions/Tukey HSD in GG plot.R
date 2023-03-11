GGTukey<-function(Tukey, linecolor_hex = "#0000ff"){
  A<-require("tidyverse")
  if(A==TRUE){
    library(tidyverse)
  } else {
    install.packages("tidyverse")
    library(tidyverse)
  }
  B<-as.data.frame(Tukey[1])
  colnames(B)[2:3]<-c("min",
                      "max")
  C<-data.frame(id=row.names(B),
                min=B$min,
                max=B$max)
  D<-C%>%
    ggplot(aes(id))+
    geom_errorbar(aes(ymin=min,
                      ymax=max),
                  width = 0.2)+
    geom_hline(yintercept=0,
               color=linecolor_hex,
               linetype="dashed",
               linewidth=1)+
    labs(x=NULL)+
    coord_flip()+
    theme_downcute(
    )
  return(D)
}