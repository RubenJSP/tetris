
var datos = [];
function gets(){
     $.getJSON('data.json', function (data) {
     		for (var i=0; i<118; i++) {
     			datos.push({
     				"bloque": data[i].groupBlock,
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
