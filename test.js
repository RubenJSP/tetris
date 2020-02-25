
var datos = [];
function gets(){
     $.getJSON('elements.json', function (data) {
     		for (var i=0; i<118; i++) {
     			datos.push({
     				"simbolo": data[i].symbol,
     				"nombre": data[i].name
     			});
     		}
        
      });

}
function getData(){
 gets();
 return datos;
}
