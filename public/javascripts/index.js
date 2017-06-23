window.onload = function () {
	render()
}
function render () {
	document.getElementById('render').onclick = function () {
		var xhr = new XMLHttpRequest()
		xhr.open('get','http://127.0.0.1:3000/users/queryAll')
		xhr.onreadystatechange = function(data){  
            if(xhr.readyState == 4){  
                if(xhr.status == 200){  
                    var data = JSON.parse(data.currentTarget.response)
                    console.log(data)
                    for(var i = 0; i < data.length; i++) {
                    	document.getElementsByClassName("result")[0].innerHTML += " id: " + data[i].id + " name: " + data[i].name + " age: " + data[i].age + "<br/>"
                    }
                }else{  
                    alert("error");  
                }  
            }  
        }  
        xhr.send(null);  
	}
}