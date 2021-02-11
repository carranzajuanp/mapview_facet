mapview_facet <- function(x,f) {
  
  criteria=split(x,x[[f]])
  for (i in 1:length(criteria)) {
    map=mapview::mapview(criteria[[i]])
    assign(paste0("map_",i), map)
  }
  set=list(map_1)
  for (i in 2:length(criteria)) {set=append(set, get(paste0("map_",i)))}
  leafsync::latticeView(set)
}

mapview_facet(x = df, f = "var")





