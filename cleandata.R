
data=read_csv("../../Eurostats_airports_FR_2020_v.csv")
data$ville=data$Nom_aéroport
data=data[,-c(1,3,4,5,6)]
data = data %>% mutate(ville = ifelse(grepl("PARIS",ville),"PARIS",ville)) %>% mutate(ville = ifelse(grepl("LYON",ville),"LYON",ville))
data_large_clean = data %>% select(tra_meas,ville,starts_with("201"))
write_csv(data_large_clean,"Eurostats_clean_large.csv")

data_long=tidyr::pivot_longer(data,col=starts_with("20"),names_to = "date")
names(data_long)

data_clean = data_long %>% count(tra_meas,ville,date,wt=value) %>% 
  mutate(annee=as.numeric(substr(date,1,4)),mois=as.numeric(substr(date,6,8))) %>%
  filter(annee>=2010)


write_csv(data_clean,"Eurostats_clean_long.csv")


flux=read_csv("./DGAC_France_métro_1999_2004_2009_2014_2019_v.csv")
flux = flux %>% rename(Origine=v1,Destination=v2,lat_Origine=lat_v1,lng_Origine=lng_v1,lat_Destination=lat_v2,lng_Destination=lng_v2)
flux[flux$Origine=="PARIS" & flux$Destination=="NICE"& flux$Annee==2014,9:13] = flux[flux$Origine=="PARIS" & flux$Destination=="NICE"& flux$Annee==2014,9:13]+flux[flux$Destination=="PARIS-LE-BOURGET",9:13]
flux =flux[-which(flux$Destination=="PARIS-LE-BOURGET"),]
flux$id=1:nrow(flux) 
write_csv(flux,"DGAC_flux.csv")

loc = read_csv("../../Eurostats_airports_FR_2020_v.csv")
loc$ville=loc$Nom_aéroport
loc = loc %>% mutate(ville = ifelse(grepl("PARIS",ville),"PARIS",ville)) %>% mutate(ville = ifelse(grepl("LYON",ville),"LYON",ville)) %>%
  select(ville,lat,lng) %>% unique()

loc_missing = flux %>% filter(!(Destination %in% loc$ville)) %>% 
  select(Destination,lat_Destination,lng_Destination) %>% 
  rename(ville=Destination,lat=lat_Destination,lng=lng_Destination) %>% unique()

loc = rbind(loc,loc_missing)
loc

write_csv(loc,"villes.csv")

library(sf)

loc_sf=st_as_sf(loc,coords = c("lng","lat"),crs=4326)
plot(loc_sf)

write_sf(loc_sf,"villes.geojson")
