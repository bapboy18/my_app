$(function() {
  var dataSource = new $.io.OlapFlatDataSource({
      dataSource: row_contents,
      metadata: {
        cube: {
          name: "ABC",
          caption: "ABC",
          measuresDimension: {
            caption: "Measures",
            measures: []
          }
        }
      }
  })
});
