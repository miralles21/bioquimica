
Datos <- 
  readXL("C:/Users/alexm/Desktop/trabajos uni/SEGUNDO DE BIOLOGIA/Bioqu�mica 1/PR�CTICAS DE LAB/practic bqca.xlsx",
   rownames=FALSE, header=TRUE, na="", sheet="Hoja3", stringsAsFactors=TRUE)

RegModel.1 <- lm(Abs.400.nm~�mol.PNF, data=Datos)
summary(RegModel.1)
attach(Datos)
xnueva<-seq(min(�mol.PNF),max(�mol.PNF),length.out=100)
xnueva
ynueva<-predict(RegModel.1,newdata=data.frame(�mol.PNF=xnueva))
plot(Abs.400.nm~�mol.PNF,data=Datos,main="Recta patr�n PNF");abline(RegModel.1,col="gold")


