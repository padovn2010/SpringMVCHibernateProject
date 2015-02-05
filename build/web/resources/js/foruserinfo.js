/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function edit()
{
    var x = document.getElementsByClassName("1");
    var i;
    for (i=0; i<x.length;i++){
        x[i].style.display = "none";
    }        
                
    var y = document.getElementsByClassName("zero");
    var j;        
    for (j=0; j<y.length;j++){
        y[j].style.display = "inline";
    }
}
            
function save ()
{
    var x= document.getElementsByClassName("zero");
    var i;
    for (i=0; i<x.length;i++){
        x[i].style.display = "none";
    }
                
    var y = document.getElementsByClassName("1");
    var j;        
    for (j=0; j<y.length;j++){
        y[j].style.display = "inline";
    }
}
                        


