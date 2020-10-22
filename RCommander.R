
Datos <- 
  readXL("C:/Users/alexm/Desktop/trabajos uni/SEGUNDO DE BIOLOGIA/Bioquímica 1/PRÁCTICAS DE LAB/practic bqca.xlsx",
   rownames=FALSE, header=TRUE, na="", sheet="Hoja3", stringsAsFactors=TRUE)

RegModel.1 <- lm(Abs.400.nm~µmol.PNF, data=Datos)
summary(RegModel.1)
attach(Datos)
xnueva<-seq(min(µmol.PNF),max(µmol.PNF),length.out=100)
xnueva
ynueva<-predict(RegModel.1,newdata=data.frame(µmol.PNF=xnueva))
plot(Abs.400.nm~µmol.PNF,data=Datos,main="Recta patrón PNF");abline(RegModel.1,col="gold")


