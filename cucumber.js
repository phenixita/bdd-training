module.exports = {
  default: {
    parallel: 2,
    language: "it",
    paths: ["behaviors/**/*.{feature,feature.md}"],
    publishQuiet: true,
    format: ["progress", "html:reports/cucumber-report.html"],
  },
};
