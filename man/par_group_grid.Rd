% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gridding.R
\name{par_group_grid}
\alias{par_group_grid}
\title{Extension of par_group_balanced for padded grids}
\usage{
par_group_grid(points_in = NULL, ngroups, padding)
}
\arguments{
\item{points_in}{\code{sf} or \code{SpatVector} object.}

\item{ngroups}{integer(1). The number of groups.}

\item{padding}{numeric(1). A extrusion factor to make buffer to
clip actual datasets. Depending on the length unit of the CRS of input.}
}
\value{
A list of two,
\itemize{
\item \code{original}: exhaustive and non-overlapping
grid polygons in the class of input
\item \code{padded}: a square buffer of each polygon in
\code{original}. Used for computation.
}
}
\description{
This function is an extension of \code{par_group_balanced}
to be compatible with \code{par_grid}, for which a set of padded grids
of the extent of input point subsets
(as recorded in the field named \code{"CGRIDID"})
is generated out of input points along with the output of
\code{par_group_balanced}.
}
\examples{
library(terra)
library(sf)
ncpath <- system.file("gpkg/nc.gpkg", package = "sf")
nc <- terra::vect(ncpath)
nc_rp <- terra::spatSample(nc, 1000)
nc_gr <- par_group_grid(nc_rp, 10L, 1000)
nc_gr
}
\seealso{
Other Parallelization: 
\code{\link{par_cut_coords}()},
\code{\link{par_fallback}()},
\code{\link{par_grid}()},
\code{\link{par_hierarchy}()},
\code{\link{par_make_grid}()},
\code{\link{par_make_gridset}()},
\code{\link{par_merge_grid}()},
\code{\link{par_multirasters}()}
}
\author{
Insang Song
}
\concept{Parallelization}
