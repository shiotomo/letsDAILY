let cal = new CalHeatMap();
cal.init({
  domain: 'month',
  data: "/api/v1/heatmap/graph",
  subdomain: 'day'
});
