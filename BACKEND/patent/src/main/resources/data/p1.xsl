<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:p="http://www.ftn.uns.ac.rs/patent" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                version="2.0">

  <xsl:template match="/">
    <html>
      <head>
        <title>Patent (XSLT)</title>
        <style type="text/css">
          * {
          margin: 0;
          padding: 0;
          text-indent: 0;
          }
          body{
          font-family: Arial, sans-serif;
          font-style: normal;
          text-decoration: none;
          }

          p {
          font-weight: normal;
          font-size: 10.5pt;
          margin: 0pt;
          }
          h1 {
          font-weight: bold;
          font-size: 12pt;
          }
          .s5 {
          font-weight: bold;
          font-size: 8.5pt;
          }
          .s7 {
          font-family: "MS Gothic", monospace;
          font-weight: normal;
          font-size: 10.5pt;
          }

          li {
          display: block;
          }

          .zvezdica > li > *:first-child:before {
          content: "* ";
          font-weight: normal;
          font-size: 8pt;
          }

          .kockica > li > *:first-child:before{
          content: "☐ ";
          font-weight: normal;
          font-size: 10.5pt;
          }

          .all_borders {
          border-top-style: solid;
          border-top-width: 1pt;
          border-left-style: solid;
          border-left-width: 1pt;
          border-bottom-style: solid;
          border-bottom-width: 1pt;
          border-right-style: solid;
          border-right-width: 1pt;
          }

          .top_bottom{
          border-top-style: solid;
          border-top-width: 1pt;
          border-bottom-style: solid;
          border-bottom-width: 1pt;
          }

          .left_right{
          border-left-style: solid;
          border-left-width: 1pt;
          border-right-style: solid;
          border-right-width: 1pt;
          }

          .top_border{
          border-top-style: solid;
          border-top-width: 1pt;
          }

          .bottom_border{
          border-bottom-style: solid;
          border-bottom-width: 1pt;
          }

          table,
          tbody {
          vertical-align: top;
          overflow: visible;
          }
        </style>
      </head>
      <body>
        <p style="text-align:right; font-size:8pt;">Образац П-1</p>
        <table
                style="border-collapse: collapse; margin-left: 5.54999pt;margin-top:30px"
                cellspacing="0">
          <tr style="height: 13pt">
            <td style="width: 323pt;" colspan="4" class="all_borders">
              <p style="text-align: center;font-size: 8pt;">
                Попуњава Завод
              </p>
            </td>
          </tr>
          <tr style="height: 39pt">
            <td style="width: 67pt; border-left-style: solid;border-left-width: 1pt;">
              <p style="font-size: 8.5pt;padding-top: 5pt;padding-left: 7pt;text-align: left; ">
                Број пријаве
              </p>
            </td>
            <td style="width: 81pt;">
              <p style="font-size: 16pt;padding-top: 10pt;padding-left: 8pt;text-align: left; ">
                П<span> <xsl:value-of select="p:prijava/p:detalji_prijave/p:broj_prijave"/> </span>
              </p>
            </td>
            <td style="width: 134pt;">
              <p style="text-indent: 0pt; text-align: left"><br /></p>
            </td>
            <td style="width: 41pt;border-right-style: solid;border-right-width: 1pt;">
              <p style="font-size: 8.5pt;padding-top: 5pt;padding-right: 9pt;text-align: right;">
                (21)
              </p>
            </td>
          </tr>
          <tr style="height: 40pt">
            <td class="left_right" style="width: 148pt;border-top-style: solid;border-top-width: 1pt;" colspan="2">
              <p style="font-size: 8.5pt;padding-top: 5pt;padding-left: 7pt;text-align: left;">
                Датум пријема
              </p>
              <p style="font-size: 8.5pt;padding-top: 2pt;padding-left: 7pt">
                <xsl:value-of select="p:prijava/p:detalji_prijave/p:datum_podnosenja"/>
              </p>
            </td>
            <td class="top_border" style="width: 164pt;">
              <p style="font-size: 8.5pt;padding-top: 5pt;padding-left: 7pt;text-align: left;">
                Признати датум подношења
              </p>
              <p style="font-size: 8.5pt;padding-left: 7pt;">
                <xsl:value-of select="p:prijava/p:detalji_prijave/p:datum_podnosenja"/>
              </p>
            </td>
            <td class="top_border" style="width: 11pt;border-right-style: solid;border-right-width: 1pt;">
              <p style="padding-top: 5pt;padding-right: 9pt;font-size: 8.5pt;text-align: right;">
                (22)
              </p>
            </td>
          </tr>
          <tr style="height: 40pt">
            <td class="all_borders" style="width: 323pt;" colspan="4">
              <p style="font-size: 8.5pt;padding-top: 4pt;padding-left: 7pt;text-align: left;">
                Печат и потпис
              </p>
            </td>
          </tr>
        </table>
        <p style="padding-left: 21pt;line-height: 12pt;text-align: left;">
          Република Србија
        </p>
        <p style="padding-left: 21pt;line-height: 106%;text-align: left;">
          Завод за интелектуалну својину
        </p>
        <p style="padding-left: 21pt;line-height: 106%;text-align: left;">
          Кнегиње Љубице број 5
        </p>
        <p style="padding-left: 21pt;line-height: 11pt;text-align: left; ">
          11000 Београд
        </p>
        <p style="text-indent: 0pt; text-align: left"><br /></p>
        <h1 style="padding-top: 4pt;text-align: center;">
          ЗАХТЕВ
        </h1>
        <h1 style="text-align: center;">
          ЗА ПРИЗНАЊЕ ПАТЕНТА
        </h1>
        <p style="text-indent: 0pt; text-align: left"><br /></p>
        <p style="font-size: 8pt;text-align: center;padding-bottom: 6pt">
          (попунити писаћом машином или рачунаром)
        </p>
        <table style="border-collapse: collapse; margin-left: 15.15pt;width: 100%;margin-bottom:160px"
               cellspacing="0">
          <tr style="height: 56pt">
            <td class="all_borders" style="width: 100%;" colspan="3">
              <p class="s5" style="padding-top: 7pt;padding-left: 5pt;text-align: left;" >
                Поље број <span style="padding-left: 200pt">I НАЗИВ ПРОНАЛАСКА</span> <span style="font-size: 8.5pt;text-align: right">(54)</span>
              </p>
              <p style="font-size: 8pt;padding-top: 3pt; padding-left: 5pt;text-align: left;">
                * Назив проналаска треба да јасно и сажето изражава суштину
                проналаска и не сме да садржи измишљене или комерцијалне називе,
                жигове, имена, шифре, уобичајене скраћенице за производе и
                сл.
              </p>
            </td>
          </tr>
          <tr style="height: 37pt">
            <td class="left_right" style="width: 100%;" colspan="3">
              <p style="padding-top: 6pt;padding-left: 5pt;line-height: 139%;text-align: left;font-size: 8.5pt;">
                На српском језику: <span> <xsl:value-of select="p:prijava/p:zahtev/p:naziv_pronalaska/p:srpski_naziv"/> </span>
              </p>
              <p style="padding-top: 6pt;padding-left: 5pt;line-height: 139%;text-align: left;font-size: 8.5pt;">
                На српском језику: <span> <xsl:value-of select="p:prijava/p:zahtev/p:naziv_pronalaska/p:engleski_naziv"/> </span>
              </p>
            </td>
          </tr>
          <xsl:variable name="podnosilac_email" select="p:prijava/p:zahtev/p:podnosilac_prijave/p:kontakt/p:e_posta"/>
          <xsl:variable name="pronalazac_email" select="p:prijava/p:zahtev/p:pronalazac/p:kontakt/p:e_posta"/>

          <tr style="height: 27pt">
            <td class="top_bottom" style="border-left-style: solid;border-left-width: 1pt;" colspan="3">
              <p class="s5" style=" padding-top: 6pt;text-align: left;">
                <xsl:choose>
                  <xsl:when test="$podnosilac_email=$pronalazac_email">
                    Поље број II ПОДНОСИЛАЦ ПРИЈАВЕ <span class="s7">■ </span><span style="font-size: 8.5pt;">Подносилац пријаве је и проналазач</span>
                  </xsl:when>
                  <xsl:otherwise>
                    Поље број II ПОДНОСИЛАЦ ПРИЈАВЕ <span class="s7">☐ </span><span style="font-size: 8.5pt;">Подносилац пријаве је и проналазач</span>
                  </xsl:otherwise>
                </xsl:choose>
              </p>
            </td>
            <td class="top_bottom" style="border-right-style: solid; border-right-width: 1pt;padding-left:-100px">
              <p style="font-size: 8.5pt; padding-top: 7pt;text-align: right;">
                (71)
              </p>
            </td>
          </tr>
          <tr style="height: 53pt">
            <td class="left_right" style="width: 186pt;padding-bottom:75px" rowspan="3">
              <p style="font-size: 8.5pt;padding-top: 6pt;padding-left: 7pt;line-height: 10pt;text-align: left;">
                Име и презиме / Пословно име: <span class="s8" style="font-size: 8pt;">(презиме</span>
              </p>
              <p style="font-size: 8pt;padding-left: 7pt;line-height: 9pt;text-align: left;">
                / пословно име уписати великим словима)
              </p>
              <p style="font-size: 8.5pt;padding-top: 6pt;padding-left: 7pt;line-height: 10pt;">
                    <p style="font-size: 8.5pt;padding-top: 6pt;padding-left: 7pt;line-height: 10pt;">
                      <xsl:value-of select="p:prijava/p:zahtev/p:podnosilac_prijave/p:ime"/>&#160;
                      <xsl:value-of select="p:prijava/p:zahtev/p:podnosilac_prijave/p:prezime"/>
                    <xsl:value-of select="p:prijava/p:zahtev/p:podnosilac_prijave/p:naziv"/></p>
              </p>
            </td>
            <td style="width: 185pt;padding-bottom:53px; " rowspan="3">
              <p style="font-size: 8.5pt; padding-top: 6pt;padding-left: 5pt;text-align: left;" >
                Улица и број, поштански број, место и држава:
              </p>
              <p style="font-size: 8.5pt; padding-top: 6pt;padding-left: 5pt;">
                <xsl:value-of select="p:prijava/p:zahtev/p:podnosilac_prijave/p:adresa/p:ulica"/>,&#160;
                <xsl:value-of select="p:prijava/p:zahtev/p:podnosilac_prijave/p:adresa/p:broj"/>,&#160;
                <xsl:value-of select="p:prijava/p:zahtev/p:podnosilac_prijave/p:adresa/p:postanski_broj"/>
              </p>
              <p style="font-size: 8.5pt; padding-top: 3pt;padding-left: 5pt;">
                <xsl:value-of select="p:prijava/p:zahtev/p:podnosilac_prijave/p:adresa/p:mesto"/>,&#160;
                <xsl:value-of select="p:prijava/p:zahtev/p:podnosilac_prijave/p:adresa/p:drzava"/>
              </p>
            </td>
            <td class="left_right" style="width: 160pt;padding-bottom:30px">
              <p style="font-size: 8.5pt;padding-top: 5pt;padding-left: 5pt;text-align: left;">
                Број телефона:
              </p>
              <p style="font-size: 8.5pt;padding-top: 5pt;padding-left: 5pt;">
                <xsl:value-of select="p:prijava/p:zahtev/p:podnosilac_prijave/p:kontakt/p:broj_telefona"/>
              </p>
            </td>
          </tr>
          <tr style="height: 45pt">
            <td class="left_right top_border" style="width: 160pt;padding-bottom:20px">
              <p style="font-size: 8.5pt;padding-top: 5pt;padding-left: 5pt;text-align: left; ">
                Број факса:
              </p>
              <p style="font-size: 8.5pt;padding-top: 5pt;padding-left: 5pt;">
                <xsl:value-of select="p:prijava/p:zahtev/p:podnosilac_prijave/p:kontakt/p:broj_faksa"/>
              </p>
            </td>
          </tr>
          <tr style="height: 40pt">
            <td class="left_right top_border" style="width: 160pt;padding-bottom:5px" rowspan="2">
              <p style="font-size: 8.5pt;padding-top: 5pt; padding-left: 5pt;text-align: left;">
                Е-пошта:
              </p>
              <p style="font-size: 8.5pt;padding-top: 5pt;padding-left: 5pt;">
                <xsl:value-of select="p:prijava/p:zahtev/p:podnosilac_prijave/p:kontakt/p:e_posta"/>
              </p>
            </td>
          </tr>
          <tr style="height: 32pt">
            <td class="top_border" style="width: 186pt;border-left-style: solid;border-left-width: 1pt;">
              <p style="font-size: 8.5pt;padding-top: 6pt; padding-left: 5pt;">
                Држављанство:&#160;<span><xsl:value-of select="p:prijava/p:zahtev/p:podnosilac_prijave/p:adresa/p:drzava"/></span>
              </p>
            </td>
            <td class="top_border" style=" width: 185pt;">
              <p style="font-size: 8pt;padding-top: 5pt;padding-left: 35pt;text-align: left;">
                (попунити само за физичка лица)
              </p>
            </td>
          </tr>
          <tr style="height: 62pt">
            <td class="all_borders" style="width: 531pt;" colspan="3">
              <p class="s5" style="padding-top: 5pt;padding-left: 23pt;text-indent: -17pt;text-align: left;">
                <span class="s7">☐ </span>Остали подносиоци пријаве су наведени у додатном листу 1 у
                наставку овог захтева
              </p>
              <p style="font-size: 8pt;padding-top: 4pt;padding-left: 5pt;text-align: left;">
                * Ако више лица подноси пријаву, потребно је одредити једно од тих
                лица као заједничког представника и доставити изјаву о зај едничком
                представнику потписaну од стране свих подносилаца или именовати
                заједничког пуномоћника за заступање и доставити пуномоћје
              </p>
            </td>
          </tr>
        </table>
        <p style="text-align:right; font-size:8pt;margin-top:180px;padding-bottom:20px">Образац П-1,стп. 2</p>
        <table style="border-collapse: collapse; margin-left: 15.15pt;width:100%" cellspacing="0">
          <tr style="height: 93pt">
            <td class="all_borders" colspan="3">
              <p class="s5" style=" padding-top: 10pt;padding-left: 5pt; text-align: left;">
                Поље број III ПРОНАЛАЗАЧ <span style="font-size: 8.5pt;">(72)</span>
              </p>
              <p  style="font-size: 8pt;padding-top: 2pt;padding-left: 5pt;text-align: left; ">
                (ако су сви проналазачи уједно и подносиоци пријаве, поље број III
                се не попуњава)
              </p>
              <p style="font-size: 8pt;padding-top: 3pt;padding-left: 10pt;text-align: left;">
                * Ако сви подносиоци пријаве нису и проналазачи, доставља се
                изјава подносилаца пријаве о основу стицања права на подношење
              </p>
              <p style="font-size: 8pt;padding-left: 5pt;line-height: 9pt;text-align: left; ">
                пријаве у односу на проналазаче који нису и подносиоци пријаве и
                у том случају у поље број III се уносе подаци о свим
                проналазачим
              </p>
              <p style="font-size: 8.5pt;padding-right: 20pt;text-indent: -17pt;line-height: 13pt;text-align: right;">
                <xsl:choose>
                  <xsl:when test="p:prijava/p:zahtev/p:pronalazac">
                    <span class="s7">☐ </span>Проналазач не жели да буде наведен у пријавиr
                  </xsl:when>
                  <xsl:otherwise>
                    <span class="s7">■ </span>Проналазач не жели да буде наведен у пријавиt
                  </xsl:otherwise>
                </xsl:choose>
              </p>

              <p style="font-size: 8pt;padding-left: 5pt;line-height: 9pt;text-align: left; ">
                (ако проналазач не жели да буде наведен у пријави поље број III се
                не попуњава)
              </p>
              <p style="font-size: 8.5pt;padding-top: 3pt;padding-left: 5pt;text-align: left;">
                *<span class="s8" style="font-size: 8pt;">
                Ако проналазач не жели да буде наведен у пријави, потребно је
                доставити потписану изјаву проналазача да не жели да буде навед
                ен.</span>
              </p>
            </td>
          </tr>
          <tr style="height: 35pt">
            <td class="left_right" style="width: 186pt;padding-bottom:80px" rowspan="3">
              <p style="font-size: 8.5pt;padding-top: 6pt;padding-left: 7pt;text-align: left;">
                Име и презиме:
                <span class="s8" style="font-size: 8pt;">(презиме уписати великим словима)</span>
              </p>
              <p style="font-size: 8.5pt;padding-top: 6pt;padding-left: 7pt;">
                <xsl:value-of select="p:prijava/p:zahtev/p:pronalazac/p:ime"/>&#160;
                <xsl:value-of select="p:prijava/p:zahtev/p:pronalazac/p:prezime"/>
              </p>
            </td>
            <td  style="width: 185pt;padding-bottom:60px" rowspan="3">
              <p style="font-size: 8.5pt;padding-top: 6pt;padding-left: 7pt;text-align: left;">
                Улица и број, поштански број, место и држава:
              </p>
                  <p style="font-size: 8.5pt; padding-top: 6pt;padding-left: 7pt;">
                    <xsl:value-of select="p:prijava/p:zahtev/p:pronalazac/p:adresa/p:ulica"/>,&#160;
                    <xsl:value-of select="p:prijava/p:zahtev/p:pronalazac/p:adresa/p:broj"/>,&#160;
                    <xsl:value-of select="p:prijava/p:zahtev/p:pronalazac/p:adresa/p:postanski_broj"/>
                  </p>
                  <p style="font-size: 8.5pt; padding-top: 3pt;padding-left: 7pt;">
                    <xsl:value-of select="p:prijava/p:zahtev/p:pronalazac/p:adresa/p:mesto"/>,&#160;
                    <xsl:value-of select="p:prijava/p:zahtev/p:pronalazac/p:adresa/p:drzava"/>
                  </p>

            </td>
            <td class="left_right" style="width: 160pt;padding-bottom:10px">
              <p style="font-size: 8.5pt;padding-top: 5pt;padding-left: 5pt;">
                Број телефона:
              </p>
              <p style="font-size: 8.5pt;padding-top: 5pt;padding-left: 5pt;">
                <xsl:value-of select="p:prijava/p:zahtev/p:pronalazac/p:kontakt/p:broj_telefona"/>
              </p>
            </td>
          </tr>
          <tr style="height: 35pt">
            <td class="all_borders" style="width: 160pt;padding-bottom:10px">
              <p style="font-size: 8.5pt;padding-top: 6pt;padding-left: 5pt;text-align: left;">
                Број факса:
              </p>
              <p style="font-size: 8.5pt;padding-top: 5pt;padding-left: 5pt;">
                <xsl:value-of select="p:prijava/p:zahtev/p:pronalazac/p:kontakt/p:broj_faksa"/>
              </p>
            </td>
          </tr>
          <tr style="height: 37pt">
            <td class="left_right" style=" width: 160pt;padding-bottom:10px">
              <p style="font-size: 8.5pt; padding-top: 5pt;padding-left: 5pt;text-align: left;">
                Е-пошта:
              </p>
              <p style="font-size: 8.5pt;padding-top: 5pt;padding-left: 5pt;">
                <xsl:value-of select="p:prijava/p:zahtev/p:pronalazac/p:kontakt/p:e_posta"/>
              </p>
            </td>
          </tr>
          <tr style="height: 45pt">
            <td colspan="3" class="all_borders">
              <p style="padding-left: 21pt;text-indent: -15pt;" class="s5">
                <span class="s7">☐ </span>Остали проналазачи су наведени у додатном листу 1 у наставку
                овог захтева
              </p>
            </td>
          </tr>
        </table>
        <p style="text-indent: 0pt; text-align: left"><br /></p>
        <p style="text-indent: 0pt; text-align: left"><br /></p>

        <table style="border-collapse: collapse; margin-left: 15.15pt;width: 100%;" cellspacing="0">
          <tr style="height: 104pt">
            <td class="all_borders" style="width: 531pt;" colspan="3">
              <p class="s5" style="padding:6pt 0pt 0pt 5pt;text-indent: 0pt;text-align: left;">
                    Поље број IV <span class="s7">☐ </span>ПУНОМОЋНИК ЗА ЗАСТУПАЊЕ
                    <span class="s7">■ </span>ПУНОМОЋНИК ЗА ПРИЈЕМ ПИСМЕНА
                    <span style="font-size: 8.5pt;">(74)</span>
              </p>

              <p class="s5" style="padding-top: 2pt;padding-left: 103pt;text-indent: -15pt;text-align: left;">
                    <span class="s7">■ </span>ЗАЈЕДНИЧКИ ПРЕДСТАВНИК
              </p>

              <p style=" font-size: 8pt;padding-left: 11pt;text-indent: -5pt;text-align: left;">
                * Пуномоћник за заступање је лице које по овлашћењу подносиоца
                пријаве предузима радње у управном поступку у границама
                пуномоћја
              </p>
              <p style="font-size: 8pt;padding-top: 3pt;padding-left: 5pt;padding-right: 29pt;text-align: left;">
                * Пуномоћник за пријем писмена је лице које је подносилац пријаве
                одредио као лице коме се упућују сва писмена насловљена на
                подносиоца
              </p>
              <p style="font-size: 8pt;padding:2pt 5pt 10pt 5pt;text-align: left;">
                * Заједничи преставник је подносилац пријаве кога су подносиоци
                пријаве, у случају да пријаву подноси више лица, одредили да
                иступа у поступку пред органом ако подносиоци нису именовали
                заједничког пуномоћника за заступање
              </p>
            </td>
          </tr>
          <tr style="height: 43pt">
            <td class="left_right" style="width: 264pt;padding-bottom:25px" rowspan="2">
              <p style="font-size: 8.5pt; padding:6pt 7pt 0px 7pt;text-align: left;">
                Име и презиме / Пословно име<span class="s8" style="font-size: 8pt;"
              >: (презиме / пословно име уписати великим словима)</span>
              </p>
              <xsl:variable name="p_tlice" select="p:prijava/p:zahtev/p:punomocnik/@xsi:type"/>
              <p style="font-size: 8.5pt; padding:6pt 7pt 0 7pt;">
                <xsl:choose>
                  <xsl:when test="contains($p_tlice,'TFizickoLice')">
                    <xsl:value-of select="p:prijava/p:zahtev/p:punomocnik/p:ime"/>&#160;
                    <xsl:value-of select="p:prijava/p:zahtev/p:punomocnik/p:prezime"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:value-of select="p:prijava/p:zahtev/p:punomocnik/p:naziv"/>
                  </xsl:otherwise>
                </xsl:choose>
              </p>

            </td>
            <td style="width: 140pt;padding-bottom:50px" rowspan="2">
              <p style="font-size: 8.5pt;padding:5pt 7pt 0px 7pt;">
                Улица и број, поштански број и место:
              </p>
              <p style="font-size: 8.5pt; padding-top: 6pt;padding-left: 7pt;">
                <xsl:value-of select="p:prijava/p:zahtev/p:punomocnik/p:adresa/p:ulica"/>,&#160;
                <xsl:value-of select="p:prijava/p:zahtev/p:punomocnik/p:adresa/p:broj"/>,&#160;
                <xsl:value-of select="p:prijava/p:zahtev/p:punomocnik/p:adresa/p:postanski_broj"/>,&#160;
                <xsl:value-of select="p:prijava/p:zahtev/p:punomocnik/p:adresa/p:mesto"/>
              </p>
            </td>
            <td class="left_right" style="width: 127pt;padding-bottom:15px">
              <p style="font-size: 8.5pt;padding:5pt 0pt 0pt 5pt">
                Број телефона:
              </p>
              <p style="font-size: 8.5pt;padding:5pt 0pt 0pt 5pt">
                <xsl:value-of select="p:prijava/p:zahtev/p:punomocnik/p:kontakt/p:broj_telefona"/>
              </p>
            </td>
          </tr>
          <tr style="height: 32pt">
            <td class="left_right top_border" style=" width: 127pt;">
              <p style="font-size: 8.5pt;padding:6pt 0pt 0pt 5pt">
                Е-пошта:
              </p>
              <p style="font-size: 8.5pt;padding:6pt 0pt 0pt 5pt">
                <xsl:value-of select="p:prijava/p:zahtev/p:punomocnik/p:kontakt/p:e_posta"/>
              </p>
            </td>
          </tr>
          <tr style="height: 53pt">
            <td class="all_borders" style="width: 531pt;" colspan="3">
              <p class="s5" style="padding-top: 7pt;padding-left: 5pt;padding-right: 20pt">
                Поље број V    АДРЕСА ЗА ДОСТАВЉАЊЕ
              </p>
              <p style="font-size: 8pt;padding-left: 5pt;padding-right: 3pt;">
                (ово поље се попуњава ако подносилац пријаве, заједнички представник
                или пуномоћник жели да се достављање поднесака врши на другој адреси
                од његове наведене адресе)
              </p>
            </td>
          </tr>
          <tr style="height: 28pt">
            <td class="left_right" style="width: 531pt;" colspan="3">
              <p style="font-size: 8.5pt;padding-top: 6pt;padding-left: 5pt;">
                Улица и број, поштански број и место: <span>
                <xsl:value-of select="p:prijava/p:zahtev/p:adresa_za_dostavljanje/p:ulica"/>,&#160;
                <xsl:value-of select="p:prijava/p:zahtev/p:adresa_za_dostavljanje/p:broj"/>,&#160;
                <xsl:value-of select="p:prijava/p:zahtev/p:adresa_za_dostavljanje/p:postanski_broj"/>,&#160;
                <xsl:value-of select="p:prijava/p:zahtev/p:adresa_za_dostavljanje/p:mesto"/>
              </span>
              </p>
            </td>
          </tr>
          <tr style="height: 33pt">
            <td class="all_borders" style="width: 531pt;" colspan="3">
              <p class="s5" style="padding-top: 6pt; padding-left: 5pt;">
                Поље број VI НАЧИН ДОСТАВЉАЊА
              </p>
            </td>
          </tr>
          <xsl:variable name="nacin_dostave" select="p:prijava/p:zahtev/p:nacin_dostavljanja"/>
          <tr style="height: 57pt">
            <td class="left_right" style="width: 531pt;" colspan="3">
              <xsl:choose>
                <xsl:when test="$nacin_dostave='ELEKTRONSKO'">
                  <p style="font-size: 8.5pt;padding-top: 5pt; padding-left: 6pt;padding-right: 39pt;">
                    <span class="s7">■ </span>Подносилац пријаве је сагласан да Завод врши достављање писмена
                    искључиво електронским путем у форми електронског документа
                    <span class="s8" style="font-size: 8pt;"
                    >(у овом случају неопходна је регистрација на порталу
                      „еУправе”)</span>
                  </p>
                </xsl:when>
                <xsl:otherwise>
                  <p style="font-size: 8.5pt;padding-top: 5pt; padding-left: 6pt;padding-right: 39pt;">
                    <span class="s7">☐ </span>Подносилац пријаве је сагласан да Завод врши достављање писмена
                    искључиво електронским путем у форми електронског документа
                    <span class="s8" style="font-size: 8pt;"
                    >(у овом случају неопходна је регистрација на порталу
                      „еУправе”)</span>
                  </p>
                </xsl:otherwise>
              </xsl:choose>

              <xsl:choose>
                <xsl:when test="$nacin_dostave='PAPIRNO'">
                  <p style="font-size: 8.5pt; padding-top: 2pt;padding-left: 22pt;text-indent: -16pt;">
                    <span class="s7">■ </span>Подносилац пријаве је сагласан да Завод врши достављање писмена
                    у папирној форми
                  </p>
                </xsl:when>
                <xsl:otherwise>
                  <p style="font-size: 8.5pt; padding-top: 2pt;padding-left: 22pt;text-indent: -16pt;">
                    <span class="s7">☐ </span>Подносилац пријаве је сагласан да Завод врши достављање писмена
                    у папирној форми
                  </p>
                </xsl:otherwise>
              </xsl:choose>


            </td>
          </tr>
          <tr style="height: 33pt">
            <td class="top_bottom" style="width: 404pt;border-left-style: solid;border-left-width: 1pt;" colspan="2">
              <p class="s5" style="padding-top: 6pt;padding-left: 5pt;">

                <xsl:variable name="tip_prijave" select="p:prijava/p:zahtev/p:tip_prijave"/>

                <xsl:choose>
                  <xsl:when test="$tip_prijave='IZDVOJENA'">
                    Поље број VII <span class="s7" style="padding-right:20pt">■ </span>ДОПУНСКА ПРИЈАВА
                    <span class="s7">☐ </span>ИЗДВОЈЕНА ПРИЈАВА
                  </xsl:when>
                  <xsl:otherwise>
                    Поље број VII <span class="s7" style="padding-right:20pt">☐ </span>ДОПУНСКА ПРИЈАВА
                    <span class="s7">■ </span>ИЗДВОЈЕНА ПРИЈАВА
                  </xsl:otherwise>
                </xsl:choose>

              </p>
            </td>
            <td class="top_bottom" style="width: 127pt;border-right-style: solid;border-right-width: 1pt;">
              <p style="font-size: 8.5pt;padding-top: 7pt;padding-left: 140pt;line-height: 106%;">
                (61)/( 62)
              </p>
            </td>
          </tr>
          <tr style="height: 23pt">
            <td class="left_right" colspan="3">
              <p style="font-size: 8.5pt;padding-top: 7pt;padding-left: 5pt;">
                Број првобитне пријаве / основне пријаве, односно основног патента: &#160;<span>
                <xsl:value-of select="p:prijava/p:zahtev/p:prvobitna_prijava/p:broj_prijave"/>
              </span>
              </p>
            </td>
          </tr>
          <tr style="height: 23pt">
            <td class="all_borders" colspan="3">
              <p style="font-size: 8.5pt;padding-top: 6pt;padding-left: 5pt;">
                Датум подношења првобитнe пријаве / основне пријаве: &#160;<span>
                <xsl:value-of select="p:prijava/p:zahtev/p:prvobitna_prijava/p:datum_podnosenja"/>
              </span>
              </p>
            </td>
          </tr>
          <tr style="height: 24pt">
            <td style="width: 494pt;border-left-style: solid;border-left-width: 1pt; border-bottom-style: solid;border-bottom-width: 1pt;" colspan="2">
              <p class="s5" style=" padding-top: 7pt; padding-left: 5pt;text-align: left;">
                Поље број VIII ЗАХТЕВ ЗА ПРИЗНАЊЕ ПРАВА ПРВЕНСТ ВА ИЗ РАНИЈИХ
                ПРИЈАВА:
              </p>
            </td>
            <td style=" width: 57pt;border-bottom-style: solid;border-bottom-width: 1pt;border-right-style: solid;border-right-width: 1pt;">
              <p style="font-size: 8.5pt;padding-top: 7pt;padding-right: 11pt;text-align: right;">
                (30)
              </p>
            </td>
          </tr>
        </table>
        <p><br /></p>

        <p style="text-align:right; font-size:8pt;margin-top:20px">Образац П-1</p>

        <table style="border-collapse: collapse; margin-left: 15.15pt;margin-top:20px;width:100%" cellspacing="0">
          <tr style="height: 43pt">
            <td class="all_borders" style="width: 177pt;" colspan="2">
              <p style="font-size: 8.5pt;padding-top: 5pt;line-height: 107%;text-align: center;">
                Датум подношења раније пријаве
              </p>
            </td>
            <td class="top_bottom" style="width: 170pt;">
              <p style="font-size: 8.5pt;padding-top: 5pt;text-align: center;">
                Број раније пријаве
              </p>
            </td>
            <td class="all_borders" style="width: 177pt;">
              <p style="font-size: 8.5pt;padding:5pt 10pt;text-align: center;">
                Двословна ознака државе, регионалне или међународне организације
              </p>
            </td>
          </tr>

          <xsl:for-each select="p:prijava/p:zahtev/p:prethodne_prijave">

            <tr style="height: 28pt">
              <td class="left_right bottom_border" style="width: 8pt;">
                <p class="s5" style="padding-top: 6pt;text-align: center;">
                  <xsl:value-of select="position()"/>.
                </p>
              </td>
              <td class="bottom_border" style="width: 170pt;">
                <p style="font-size: 8.5pt;text-align: center;"><xsl:value-of select="p:datum_podnosenja"/></p>
              </td>
              <td class="left_right bottom_border" style=" width: 177pt;">
                <p style="font-size: 8.5pt;text-align: center;"><xsl:value-of select="p:broj_prijave"/></p>
              </td>
              <td class="bottom_border" style="width: 170pt;border-right-style: solid;border-right-width: 1pt;">
                <p style="font-size: 8.5pt;text-align: center;"><xsl:value-of select="p:dvoslovna_oznaka"/></p>
              </td>
            </tr>
          </xsl:for-each>

          <tr style="height: 33pt">
            <td class="left_right bottom_border" colspan="4">
              <p class="s5" style="padding-top: 5pt;padding-left: 21pt;text-indent: -15pt;">
                <span class="s7">☐ </span>Подаци о осталим правима првенства су наведени у додатном листу
                2 у наставку овог захтева
              </p>
            </td>
          </tr>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
