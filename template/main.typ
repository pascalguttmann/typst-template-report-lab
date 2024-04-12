#import "template-report-lab.typ": conf, date
#show: doc => conf(
  title: [
    The Title
  ],
  authors: (
    (
      name: "Bardia Rastegar",
      affiliation: "276035",
    ),
    (
      name: "Pascal Guttmann",
      affiliation: "275358",
    ),
  ),
  group: 1.1,
  course: "Smart Systems",
  lecture: "Optical Systems Laboratory",
  semester: 2,
  date: date,
  appendix: include("./chapter/appendix.typ"),
  doc,
)

#include("./chapter/introduction.typ")

#include("./chapter/theory.typ")

#include("./chapter/instruments.typ")

#include("./chapter/results.typ")

#include("./chapter/evaluation.typ")

#include("./chapter/summary.typ")

