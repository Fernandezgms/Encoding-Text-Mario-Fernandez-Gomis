<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html"/> 
    
    <xsl:template match="/">
        <html>

            <head>
                <link rel="stylesheet" type="text/css" href="mycss.css"/>
                <script type="text/javascript" src="java.js"></script>
                <title>
                    Cartoline
                </title>
            </head>

            <body>
                <h1>Progetto di Codifica di testi 2018/2019</h1>
                <h2>Mario Gomis  And  Mirko Morici</h2>
                <div id="globale">
                    <div id="tutto">
                        <div id="davanti"> Cartolina 7694-034</div>
                        <div id="indietro">Cartolina 7694-046</div>
                        <div id="sinistra">Informatica Umanistica</div>
                        <div id="destra">Cartolina 7694-038</div>
                        <div id="sopra"></div>
                        <div id="sotto"></div>
                     </div>
                </div>
                <br />
                <h3> Cartoline codificate </h3>
                <h4 class="des">Cartolina 7964-034 </h4>
                <div class="img-magnifier-container">
                     <img  src="7694-034F.jpg" id="cartolina1F" class="belle"/>
                     <img  src="7694-034R.jpg" id="cartolina1R" class="belle"/>

                </div>


                <div class="testo">
                    
                    <xsl:call-template name="template-div-left" />
                    <xsl:call-template name="template-div-right" />
                    <xsl:call-template name="immagine-frontale" />
                   
                </div>
                <br />
                <br />
                <hr/>
                <h4 class="des">Cartolina 7694-046</h4>
                <div id="cartolina3">
                    <img  src="7694-046F.jpg" id="cartolina3F" class="belle"/>
                    <img  src="7694-046R.jpg" id="cartolina3R" class="belle"/>
                </div>


                <div class="testo">
                    <xsl:call-template name="template-div-retro" />
                    <xsl:call-template name="immagine-frontale3" />            
                </div>
                <br />
                <br />
                <hr/>

                <h4 class="des">Cartolina 7694-038</h4>
                <div id="cartolina1">
                     <img  src="7694-038F.jpg" id="cartolinaF" class="belle"/>
                     <img  src="7694-038R.jpg" id="cartolinaR" class="belle"/>
                </div>

                <div class="testo">
                    <xsl:call-template name="retro" />
                    <xsl:call-template name="francobollo" />
                    <xsl:call-template name="final" />
                    <xsl:call-template name="image" />
                    <xsl:value-of select="/TEI/text/body/figDesc"/>
                </div>
                <br />
                <br />
                <br />
                <br />
                 <p style="margin-top:0px" id="bel">Tutte le pagine presenti sono state validate secondo gli standard del W3C, tutte i file xml validati con Xmllint e dalla Tei_all.dtd  </p>
                <br />

            </body>

        </html>
    </xsl:template>
    <!--Gli ID dei tag delle cartoline che riporto nell'xml DEVONO essere tutti diversi tra di loro-->
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
    <xsl:template match="id('retro2')" name="template-div-retro">
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

    <xsl:template match="id('fronte')" name="image">

        <p>
             <xsl:value-of select="id('img')"/>
             <h4>Descrizione dell'immagine :</h4> 
             <xsl:value-of select="id('head1')"/>
        </p>

    </xsl:template>

<!--Fine cartolina 7694-038-->    

</xsl:stylesheet>