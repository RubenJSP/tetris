
var datos = [];
function gets(){
     $.getJSON({url: 'data.json', async: false}, (data) => {
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
