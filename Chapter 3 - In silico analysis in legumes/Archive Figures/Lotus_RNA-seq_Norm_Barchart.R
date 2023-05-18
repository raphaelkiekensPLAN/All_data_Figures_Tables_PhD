x<-read.csv(file="CH2_Lotus_Norm.csv")
head(x)
level_order <- c('Leaf', 'Root', 'Immature flower', 'Mature flower', 'Pod', 'Seed', 'Root (1h mock)', 'Root (1h BAP)', 'Root (24h mock)', 'Root (24h BAP)', 'Root (3dpi mock)', 'Root (3dpi M. loti)', 'Shoot (3dpi mock)', 'Shoot (3dpi M. loti)', 'Nodule Primordia (7dpi M. loti)', 'Nodules (10 dpi M. loti)', 'Nodules (21 dpi M. loti)', 'Root (3dpi mock )', 'Root (3 dpi M. loti )', 'Root (3 dpi B. elkanii)', 'Root (3dpi S. fredii)', 'Root (3dpi P. syringae)', 'Root (3dpi R. solanacearum)', 'Root (15 dpi mock)', 'Root (15 dpi G. intraradices)', 'Root (27 dpi mock)', 'Root (27 dpi G. intraradices)' )
p<-ggplot(data=x, aes(x=factor(Tissue, level=level_order), y=RPKM, fill=Gene)) + 
geom_bar(stat="identity", position=position_dodge()) +  
theme_classic() + 
theme(legend.title = element_blank(), axis.title.x = element_blank(), axis.text.x = element_text(angle = 45, hjust = 1)) +  
ggtitle("") + theme(plot.title = element_text(hjust = 0)) + 
theme(legend.text = element_text(size = 12), legend.position="bottom") + 
scale_y_continuous(expand = expansion(mult = c(0, .1)))+ 
theme(axis.text.x= element_text(size=12), axis.text.y=element_text(size=12))+ 
theme(plot.margin = unit(c(1, 1, 1, 4), "cm")) + 
theme(plot.title = element_text(size=18))+theme(axis.title.y = element_text(size=12))
p