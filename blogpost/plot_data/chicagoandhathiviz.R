chicagodata=read.table("plot_data/chicago.data.txt", sep="\t")
chicagodatagdf=as.data.frame(chicagodata)
data=read.table("plot_data/fig1_ci.txt", sep="\t")
gdf=as.data.frame(data)
p <- ggplot(gdf, (aes(x=gdf$V1))) + geom_point(data=gdf, aes(x=gdf$V1, y=gdf$V3, colour="Hathi"), size=1) + geom_point(data=chicagodatagdf, aes(x=chicagodatagdf$V1, y=chicagodatagdf$V2, colour="Chicago"), size=1)  + xlab("") + ylab("") + ggtitle("Description of women, as a percentage of characterization in fiction\n") + scale_y_continuous(labels = scales::percent, limits=c(0,.74))  + scale_colour_manual(name="Source", values=c("Hathi"="black","Chicago"="red")) +   theme(text = element_text(size = 16))
plot(p)