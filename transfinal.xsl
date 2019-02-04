<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <xsl:output method="html"/> 
    
    <xsl:template match="/">
        <html>

            <head>
                <link rel="stylesheet" type="text/css" href="mycss.css"/>
                <script type="text/javascript" src="java.js"></script>
                <script type="text/javascript" src="cart.js"></script>
                <link rel="icon" href="hacker.jpg" type="image/jpg" />
                <title>
                    Project Encoding Text
                </title>
            </head>

            <body>
                
                <div id="home">
                    <span class="bottone" onclick="openNav()">&#9776;</span> 
                
                    <div id="myNav" class="overlay">  
                        <a href="javascript:void(0)" class="close" onclick="closeNav()"> <!-- &times; --> Close</a> 
                        <div class="overlay-content"> 
                            <a href="#2" class="link" onclick="closemenu()" style="color: #ffffe8">Prima Cartolina</a> 
                            <a href="#3" class="link" onclick="closemenu()" style="color: #ffffe8">Seconda Cartolina</a> 
                            <a href="#4" class="link" onclick="closemenu()" style="color:#ffffe8">Terza Cartolina</a> 
                            <a href="#5" class="link" onclick="closemenu()" style="color:#ffffe8">Conclusioni</a> 
                            <a href="#6" class="link" onclick="closemenu()" style="color:#ffffe8">About</a> 
                        </div>                        
                    </div>  
            
                    <!-- Qui c'e' il titolo del sito e la freccia --> 
                   <video autoplay="autoplay" muted="muted" loop="loop"  id="myVideo">
                    <source src="matrix.mp4" type="video/mp4"></source>

                    </video> 
                     <div id="titolo">
                        <h1 class="hero-text" style="font-size:65px" >Encoding Text</h1>
                        <h2 class="hero-text">Progetto di codifica di testi 2019</h2>
                    </div>       
                    <div id="arrowDown" class="arrow animated bounce"> 
                        <a href="#2"> 
                            <img src="freccia.png" alt="arrowDown" style="width:70px;height:60px;" /> 
                        </a> 
                    </div>
                </div>
                    
                <div id ="toutbelle">
                <a name="2"></a>
                <div class="bgimg-2">
                  <div class="caption">
                    <span class="border" style="    background-color:transparent;font-size:25px;color: #f7f7f7;"><div class="testouno">

                    <xsl:call-template name="template-div-left"/>
                    <xsl:call-template name="template-div-right"/>
                    <xsl:call-template name="template-mittente" />
                    <br></br>
                    <xsl:call-template name="template-destinatario" />
                    <br></br>
                    <xsl:call-template name="template-luogo" />
                    <xsl:call-template name="template-luogo2" />
                    <xsl:call-template name="immagine-frontale"/>
                    
                </div></span>
                  </div>
                </div>

                <div style="position:relative;" class="equo">
                  <div id="par1">
                    <div id="risultato"></div>
                    <div id="descrizione1"></div>
                    <button id="fronte1" class="button">Fronte</button>
                    <button id="retro1" class="button">Retro</button>
                  </div>
                </div>

                <a name="3"></a>
                <div class="bgimg-3">
                  <div class="caption">
                    <span class="border" style="background-color:transparent;font-size:25px;color: #f7f7f7;"><div class="testodue">
                    
                    <xsl:call-template name="retro" />
                    <xsl:call-template name="final" />
                    <xsl:call-template name="francobollo" />
                    <xsl:call-template name="template-mittente3" /> 
                    <br/>
                    <xsl:call-template name="template-luogo3" />
                    <xsl:call-template name="template-luogo4" />
                    <xsl:call-template name="image" />
                    <xsl:value-of select="/TEI/text/body/figDesc"/>

                </div></span> 
                  </div>
                </div>

                <div style="position:relative;" class="equo">
                  <div id="par2"><div id="cartolina1">
                    <div id="risultato2"></div>
                    <div id="descrizione2"></div>
                    <button id="fronte2" class="button">Fronte</button>
                    <button id="retro2" class="button">Retro</button>
                </div>
                  </div>
                </div>

                <a name="4"></a>
                <div class="bgimg-4">
                  <div class="caption">
                    <span class="border" style="background-color:transparent;font-size:25px;color: #f7f7f7;"><div class="testotre">

                    <xsl:call-template name="template-div-retro" />
                    <br />
                    <xsl:call-template name="template-mittente2" />
                    <br />
                    <xsl:call-template name="immagine-frontale3" />

                </div></span>
                  </div>
                </div>

                <div style="position:relative;" class="equo">
                  <div id="par3"><div id="cartolina3">
                    <div id="risultato3"></div>
                    <div id="descrizione3"></div>
                    <button id="fronte3" class="button">Fronte</button>
                    <button id="retro3" class="button">Retro</button>
                </div>
                  </div>
                </div>

                <a name="5"></a>
                <div class="bgimg-5">
                  <div class="caption">
                    <span class="border" style="background-color:transparent;font-size:25px;color: #f7f7f7;"><div class="testo">
                        <div id="visibile"></div>
                            <p id="test1" class="giu">Progetto Realizzato per l'esame di Codifica di Testi</p> <p id="test2" class="giu"> Anno Accademico : 2018 / 2019</p> <p id="test3" class="giu">Codificatori: Mario Gomis, Mirko Morici</p>
                            <p id="test4" class="giu">Il lavoro e stato organizzato in 3 parti: XML, XSL, CSS JAVASCRIPT</p>
                </div></span>
                  </div>
                </div>

                <a name="6"> </a>
                <div style="position:relative;" class="equo">
                  <div id="par31"><div id="globale">
                    <div id="tutto">
                        <div id="davanti"><p class="couleur">Informatica Umanistica</p></div>
                        <div id="indietro"><p class="couleur">Encoding Text</p></div>
                        <div id="sinistra">Mirko Morici <br></br>544796</div>
                        <div id="destra">Mario Gomis<br></br>543850</div>
                        <div id="sopra"><br /><p class="couleur">C.D.T</p></div>
                        <div id="sotto"></div>
                     </div>
                </div>
                  </div>
                </div>
            </div>

            </body>

        </html>
    </xsl:template>


    <!--************************* Template luoghi **************************-->


    <xsl:template  name="template-mittente">
                Mittente cartolina: <strong> <xsl:value-of select="tei:TEI/tei:text/tei:body/tei:div/tei:closer[@xml:id='zone4']/tei:signed/tei:persName" /> </strong>
    </xsl:template>

    <xsl:template  name="template-destinatario">
                Destinatario cartolina: <strong> <xsl:value-of select="tei:TEI/tei:text/tei:body/tei:div/tei:ab/tei:persName" /> </strong>
    </xsl:template>

    <xsl:template  name="template-mittente2">
                Mittente cartolina: <strong> <xsl:value-of select="tei:TEI/tei:text/tei:body/tei:div/tei:closer[@xml:id='zone11']/tei:signed/tei:persName" /> </strong>
    </xsl:template>
    <xsl:template  name="template-mittente3">
                Mittente cartolina: <strong> <xsl:value-of select="tei:TEI/tei:text/tei:body/tei:div/tei:div[@xml:id='Section1']/tei:closer/tei:signed/tei:persName" /> </strong>
    </xsl:template>



    <!--***************** Template mittente e destinatario *****************-->


    <xsl:template name="template-luogo">
        Luoghi presenti nella seguente cartolina: <strong><xsl:value-of select="tei:TEI/tei:text/tei:body/tei:div/tei:opener/tei:placeName/tei:settlement"/></strong>
    </xsl:template>

    <xsl:template name="template-luogo2">
        - <strong><xsl:value-of select="tei:TEI/tei:text/tei:body/tei:div/tei:ab/tei:address/tei:placeName" /></strong>
    </xsl:template>


    <xsl:template name="template-luogo3">
        Luoghi presenti nella seguente cartolina: <strong><xsl:value-of select="tei:TEI/tei:text/tei:body/tei:div/tei:div/tei:p/tei:placeName" /></strong>
    </xsl:template>

    <xsl:template name="template-luogo4">
        - <strong><xsl:value-of select="tei:TEI/tei:text/tei:body/tei:div/tei:div/tei:p/tei:address/tei:addrLine/tei:placeName" /></strong>
    </xsl:template>


                            <!--Inizio cartolina 7694-034 -->


    <xsl:template match="id('left')" name="template-div-left">
        <h4>Codifica :</h4>
        <p>
            <xsl:value-of select="id('zone1')"/>
        </p>
        
        <p>
            <xsl:value-of select="id('zone2')"/>
            <xsl:value-of select="id('zone3')"/>
        </p>

        <p>
            <xsl:value-of select="id('zone4')"/>
        </p>

    </xsl:template>

    <xsl:template match="id('right')" name="template-div-right">
        <p>
            <xsl:value-of select="id('zone5')"/>
        </p>
        
 
        <p>
            <xsl:value-of select="id('zone8')"/>
        </p>

        <p> 
            Francobolli utilizzati nella crtolina : 
            <xsl:value-of select="id('zone6')"/>
            <xsl:value-of select="id('zone7')"/>
        </p>

    </xsl:template>

    <xsl:template match="id('Fronte_cartolina1')" name="immagine-frontale">
        <h4>Descrizione immagine :</h4>
        <xsl:value-of select="id('figDesc1')"/>
    </xsl:template>


                            <!--Fine cartolina 7694-034 -->

    
                            <!--Inizio cartolina 7694-046-->


    <xsl:template match="id('retro')" name="template-div-retro">
        <h4> Codifica : </h4>

        <p>
            <xsl:value-of select="id('zone9')"/>
        </p>

        <p>
            <xsl:value-of select="id('zone10')"/>
            <xsl:value-of select="id('zone11')"/>

        </p>

    </xsl:template>

    <xsl:template match="id('Fronte_cartolina2')" name="immagine-frontale3">
        <h4>Descrizione immagine :</h4>
        <xsl:value-of select="id('figDesc2')"/>
    </xsl:template>


                            <!--Fine cartolina 7694-046-->


                            <!--Inizio cartolina  7694-038 -->


    <xsl:template match="id('retro')" name="retro">

        <p>
         <h4> Codifica : </h4>
         <xsl:value-of select="id('Section1')"/>
        </p>

    </xsl:template>

    <xsl:template match="id('retro')" name="francobollo">

        <p>
            Francobolli utilizzati nella cartolina :
            <xsl:value-of select="id('partDSopra')"/>
        </p>

    </xsl:template>

    <xsl:template match="id('Section2')" name="final">
       
        <p>
            <xsl:value-of select="id('destin')"/>
        </p>

    </xsl:template>

    <xsl:template match="id('fronte3')" name="image">

        <p>
             <xsl:value-of select="id('img')"/>
             <h4>Descrizione dell'immagine :</h4> 
             <xsl:value-of select="id('head1')"/>
        </p>

    </xsl:template>


                            <!--Fine cartolina 7694-038-->



</xsl:stylesheet>
