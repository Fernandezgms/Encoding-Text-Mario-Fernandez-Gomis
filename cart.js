// Dati prima cartolina 
var nodofronte;
var nodoretro;
var nodorisultato;
var nododescrizione;
// Dati seconda cartolina
var nodofronte2;
var nodoretro2;
var nodorisultato2;
var nododescrizione2;
// Dati terza cartolina
var nodofronte3;
var nodoretro3;
var nodorisultato3;
var nododescrizione3;


function gestorefronte (){
	try {
		nodorisultato.style.backgroundImage = "url(7694-034front.jpg)";
		nododescrizione.innerHTML = "Cartolina numero : 7694-034 \<br\> Tipo  visualizzazione : Frontale  \<br\>Ente di Appartenenza : Comune della Spezia \<br\> Encoding by : Tommaso Castagneto \<br\> Compilatore: Tommaso Castagneto \<br\> Responsabile scientifico: Giacomo Paolicchi e Enrica Salvatori \<br\> Funzionario responsabile: Marzia Ratti "

	} catch (e) {
		alert("gestorefronte" + e);
	}

} 

function gestoreretro (){
	try {
		nodorisultato.style.backgroundImage = "url(7694-034retro.jpg)";
		nododescrizione.innerHTML = " Cartolina numero : 7694-034 \<br\> Tipo visualizzazione : Retro \<br\> Descrizione Retro : Sul retro riporta la stampa “Proprietà artistica riservata, \<br\> n  118-3 , 2 Timbri della ferrovia di Firenze e 2 franconolli delle poste Italiane.”"			
		//var img = document.createElement("img");
  		//img.src = "7694-046F.jpg";
  		//nodorisultato.appendChild(img);
  		//var div = document.getElementsById("risultato");
		//div.style.backgroundImage = 'url('+image+')';
	} catch (e) {
		alert("gestoreretro" + e);
	}


	// ****************************************************************************************************************************************************************************************************//
	
}

function gestorefronte2 (){
	try{

		nodorisultato2.style.backgroundImage = "url(7694-038front.jpg)";
		nododescrizione2.innerHTML = "Cartolina numero : 7694-038 \<br\> Tipo visualizzazione : Frontale \<br\>  Ente di Appartenenza : Comune della Spezia \<br\> Compilatore: Tommaso Castagneto \<br\> Responsabile scientifico: Giacomo Paolicchi e Enrica Salvatori \<br\>  Funzionario responsabile: E.Ratti"

	} catch (e) {
		alert("gestorefronte2" + e);
	}
}

function gestoreretro2 (){
	try{

		nodorisultato2.style.backgroundImage = "url(7694-038retro.jpg)";
		nododescrizione2.innerHTML = "Cartolina numero : 7694-038 \<br\> Tipo visualizzazione : Retro \<br\> Descrizione Retro : Sul retro riporta la stampa “Proprietà artistica riservata,\<br\> n  143-1”, 3 Timbri e un marca bollo.	 "

	} catch (e) {
		alert("gestoreretro2" + e);
	}
}


	// ****************************************************************************************************************************************************************************************************//


function gestorefronte3 (){
	try{

		nodorisultato3.style.backgroundImage = "url(7694-046front.jpg)";
		nododescrizione3.innerHTML = "Cartolina numero : 7694-046 \<br\> Tipo visualizzazione : Frontale \<br\> Ente di Appartenenza : Comune della Spezia \<br\> Encoding by : Tommaso Castagneto \<br\> Compilatore: Tommaso Castagneto \<br\> Responsabile scientifico: Giacomo Paolicchi e Enrica Salvatori \<br\> Funzionario responsabile: Marzia Ratti" 

	} catch (e) {
		alert("gestorefronte3" + e);
	}
}

function gestoreretro3 (){
	try{

		nodorisultato3.style.backgroundImage = "url(7694-046retro.jpg)";
		nododescrizione3.innerHTML = "Cartolina numero : 7694-046 \<br\> Tipo visualizzazione : Retro \<br\> Descrizione Retro : Non è presente alcun francobollo,\<br\> sono presenti le scritte: Proprietà art. riserv.- Casa editrice d aste Bestetti e Tumminelli - Milano", "Stefano Bersani - Tenerezze Materne Tendresses de mere ", "Muttierliebe Fondness"

	} catch (e) {
		alert("gestoreretro3" + e);
	}
}

	// ****************************************************************************************************************************************************************************************************//


function gestoreLoad () {
	try{
		// Dati relativi al Primo grafico
		nododescrizione = document.getElementById("descrizione1");
		nodofronte = document.getElementById("fronte1");
		nodoretro = document.getElementById("retro1");
		nodorisultato = document.getElementById("risultato");
		nodofronte.onclick = gestorefronte;
		nodoretro.onclick = gestoreretro;
		gestorefronte();
		// Dati relativi al Secondo grafico
		nododescrizione2 = document.getElementById("descrizione2");
		nodofronte2 = document.getElementById("fronte2");
		nodoretro2 = document.getElementById("retro2");
		nodorisultato2 = document.getElementById("risultato2");
		nodofronte2.onclick = gestorefronte2;
		nodoretro2.onclick = gestoreretro2;
		gestorefronte2();
		// Dati relativi alla Terza cartolina
		nododescrizione3 = document.getElementById("descrizione3");
		nodofronte3 = document.getElementById("fronte3");
		nodoretro3 = document.getElementById("retro3");
		nodorisultato3 = document.getElementById("risultato3");
		nodofronte3.onclick = gestorefronte3;
		nodoretro3.onclick = gestoreretro3;
		gestorefronte3();

	} catch (e) {
		alert("gestoreLoad" + e);
	}
}

window.onload = gestoreLoad;