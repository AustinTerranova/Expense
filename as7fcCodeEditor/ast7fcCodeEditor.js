



function css() {
    
	document.getElementById('css').value = 'h4{color:lightblue;text-align:center;} \n p{font-family:verdana,cursive;font-size:35pt;text-align:right;}';
}

function html() {
    
    document.getElementById('html').value = '<h4>Hello World</h4> \n <p>is it applied?</p>'; 
}

function cleanAll() {
    document.getElementById('html').value = '';
    document.getElementById('css').value = '';
    document.getElementById('preview').innerHTML = '';
}

function launchPreview() {
    document.getElementById('preview').innerHTML = document.getElementById('html').value;
    
    
    
   
}

function toggle() {
    
    if (document.getElementById('html').style.color == "black") {
        document.getElementById('html').style.color = document.getElementById('css').value
        

    } else {
        document.getElementById('html').style.color == "lightblue"
       document.getElementById('preview').innerHTML = document.getElementById('html').value;
    }
}
   
}