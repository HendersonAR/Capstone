library(dplyr)
library(janitor)
library(readr)
library(ggplot2)
library(purrr)


ONE <- read.csv('CSVs/ONE.csv')
TWO <- read.csv('CSVs/TWO.csv')
THR <- read.csv('CSVs/THREE.csv')
FOUR <- read.csv('CSVs/FOUR.csv')
FIVE <- read.csv('CSVs/FIVE.csv')
SIX <- read.csv('CSVs/SIX.csv')
SEV <- read.csv('CSVs/SEVEN.csv')
EIGHT <- read.csv('CSVs/EIGHT.csv')
NINE <- read.csv('CSVs/NINE.csv')
TEN <- read.csv('CSVs/TEN.csv')
ELVN <- read.csv('CSVs/ELEVEN.csv')
TWLV <- read.csv('CSVs/TWELVE.csv')
THRTN <- read.csv('CSVs/THIRTEEN.csv')
FRTN <- read.csv('CSVs/FOURTEEN.csv')

files <- list(ONE, TWO, THR, FOUR, FIVE, SIX, SEV,
              EIGHT, NINE, TEN, ELVN, TWLV, THRTN, FRTN)


process_csv <- function(df) {
  df <- df %>% 
    row_to_names(row_number = 1) %>%  
    clean_names()
  
  df$min <- as.numeric(gsub(",", "", df$min))
  
  return(df)
}

ESP1 <- bind_rows(lapply(files, process_csv))

write.csv(ESP1, "ESP1.csv", row.names = FALSE)



a <- read.csv('CSVs/a.csv')
b <- read.csv('CSVs/b.csv')
c <- read.csv('CSVs/c.csv')
d <- read.csv('CSVs/d.csv')
e <- read.csv('CSVs/e.csv')
f <- read.csv('CSVs/f.csv')
g <- read.csv('CSVs/g.csv')
h <- read.csv('CSVs/h.csv')
i <- read.csv('CSVs/i.csv')
j <- read.csv('CSVs/j.csv')
k <- read.csv('CSVs/k.csv')
l <- read.csv('CSVs/l.csv')
m <- read.csv('CSVs/m.csv')
n <- read.csv('CSVs/n.csv')

FRA1_files <- list(a, b, c, d, e, f, g, h, i, j, k, l, m, n)


o <- read.csv('CSVs/o.csv')
p <- read.csv('CSVs/p.csv')
q <- read.csv('CSVs/q.csv')
r <- read.csv('CSVs/r.csv')
s <- read.csv('CSVs/s.csv')
t <- read.csv('CSVs/t.csv')
u <- read.csv('CSVs/u.csv')
v <- read.csv('CSVs/v.csv')
w <- read.csv('CSVs/w.csv')
x <- read.csv('CSVs/x.csv')
y <- read.csv('CSVs/y.csv')
z <- read.csv('CSVs/z.csv')
a1 <- read.csv('CSVs/a1.csv')
b1 <- read.csv('CSVs/b1.csv')

ITA1_files <- list(o, p, q, r, s, t, u, v, w, x, y, z, a1, b1)


c1 <- read.csv('CSVs/c1.csv')
d1 <- read.csv('CSVs/d1.csv')
e1 <- read.csv('CSVs/e1.csv')
f1 <- read.csv('CSVs/f1.csv')
g1 <- read.csv('CSVs/g1.csv')
h1 <- read.csv('CSVs/h1.csv')
i1 <- read.csv('CSVs/i1.csv')
j1 <- read.csv('CSVs/j1.csv')
k1 <- read.csv('CSVs/k1.csv')
l1 <- read.csv('CSVs/l1.csv')
m1 <- read.csv('CSVs/m1.csv')
n1 <- read.csv('CSVs/n1.csv')

GER1_files <- list(c1, d1, e1, f1, g1, h1, i1, j1, k1, l1, m1, n1)


o1 <- read.csv('CSVs/o1.csv')
p1 <- read.csv('CSVs/p1.csv')
q1 <- read.csv('CSVs/q1.csv')
r1 <- read.csv('CSVs/r1.csv')
s1 <- read.csv('CSVs/s1.csv')
t1 <- read.csv('CSVs/t1.csv')
u1 <- read.csv('CSVs/u1.csv')
v1 <- read.csv('CSVs/v1.csv')
w1 <- read.csv('CSVs/w1.csv')
x1 <- read.csv('CSVs/x1.csv')
y1 <- read.csv('CSVs/y1.csv')
z1 <- read.csv('CSVs/z1.csv')
a2 <- read.csv('CSVs/a2.csv')
b2 <- read.csv('CSVs/b2.csv')

ENG1_files <- list(o1, p1, q1, r1, s1, t1, u1, v1, w1, x1, y1, z1, a2, b2)


c2 <- read.csv('CSVs/c2.csv')
d2 <- read.csv('CSVs/d2.csv')
e2 <- read.csv('CSVs/e2.csv')
f2 <- read.csv('CSVs/f2.csv')
g2 <- read.csv('CSVs/g2.csv')
h2 <- read.csv('CSVs/h2.csv')
i2 <- read.csv('CSVs/i2.csv')
j2 <- read.csv('CSVs/j2.csv')
k2 <- read.csv('CSVs/k2.csv')
l2 <- read.csv('CSVs/l2.csv')
m2 <- read.csv('CSVs/m2.csv')
n2 <- read.csv('CSVs/n2.csv')
o2 <- read.csv('CSVs/o2.csv')
p2 <- read.csv('CSVs/p2.csv')
q2 <- read.csv('CSVs/q2.csv')

ENG2_files <- list(c2, d2, e2, f2, g2, h2, i2, j2, k2, l2, m2, n2, o2, p2, q2)


process_csv <- function(df) {
  df <- df %>%
    row_to_names(row_number = 1) %>%
    clean_names()
  
  df$min <- as.numeric(gsub(",", "", df$min))
  
  return(df)
}


FRA1 <- bind_rows(lapply(FRA1_files, process_csv))
ITA1 <- bind_rows(lapply(ITA1_files, process_csv))
GER1 <- bind_rows(lapply(GER1_files, process_csv))
ENG1 <- bind_rows(lapply(ENG1_files, process_csv))
ENG2 <- bind_rows(lapply(ENG2_files, process_csv))


write.csv(FRA1, "FRA1.csv", row.names = FALSE)
write.csv(ITA1, "ITA1.csv", row.names = FALSE)
write.csv(GER1, "GER1.csv", row.names = FALSE)
write.csv(ENG1, "ENG1.csv", row.names = FALSE)
write.csv(ENG2, "ENG2.csv", row.names = FALSE)

# Load serieB CSVs individually
serieBA <- read.csv('CSVs/serieBA.csv')
serieBB <- read.csv('CSVs/serieBB.csv')
serieBC <- read.csv('CSVs/serieBC.csv')
serieBD <- read.csv('CSVs/serieBD.csv')
serieBE <- read.csv('CSVs/serieBE.csv')
serieBF <- read.csv('CSVs/serieBF.csv')
serieBG <- read.csv('CSVs/serieBG.csv')
serieBH <- read.csv('CSVs/serieBH.csv')
serieBI <- read.csv('CSVs/serieBI.csv')
serieBJ <- read.csv('CSVs/serieBJ.csv')
serieBK <- read.csv('CSVs/serieBK.csv')
serieBL <- read.csv('CSVs/serieBL.csv')
serieBM <- read.csv('CSVs/serieBM.csv')

serieB_files <- list(serieBA, serieBB, serieBC, serieBD, serieBE, serieBF, 
                     serieBG, serieBH, serieBI, serieBJ, serieBK, serieBL, serieBM)

# Function to process CSVs (same as your original)
process_csv <- function(df) {
  df <- df %>%
    row_to_names(row_number = 1) %>%
    clean_names()
  
  df$min <- as.numeric(gsub(",", "", df$min))
  
  return(df)
}

# Combine all serieB files
ITA2 <- bind_rows(lapply(serieB_files, process_csv))

# Save combined CSV
write.csv(ITA2, "ITA2.csv", row.names = FALSE)




