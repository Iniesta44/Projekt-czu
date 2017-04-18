<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="text"/>
  <xsl:template match="/">
    {
    <xsl:value-of select="nasteveni" />
      "nastaveni": {
        <xsl:value-of select="zobrazeni" />
        "zobrazeni": {
          "jas-value": <xsl:value-of select="nastaveni/zobrazeni/jas/@value"/>,
          "rozliseni": "<xsl:value-of select="nastaveni/zobrazeni/rozliseni"/>",
          "adaptivni_jas": "<xsl:value-of select="nastaveni/zobrazeni/adaptivni_jas/@enabled" />",
          "nocni_rezim": "<xsl:value-of select="nastaveni/zobrazeni/nocni_rezim/@enabled" />",
          "velikost_pisma": "<xsl:value-of select="nastaveni/zobrazeni/velikost_pisma"/>",
          "kvalita_efektu": "<xsl:value-of select="nastaveni/zobrazeni/kvalita_efektu"/>",
          "kvalita_shaderu": "<xsl:value-of select="nastaveni/zobrazeni/kvalita_shaderu"/>",
          "kvalita_textur": "<xsl:value-of select="nastaveni/zobrazeni/kvalita_textur"/>"
        },
        <xsl:value-of select="cas" />
        "cas": {
          "hodiny": "<xsl:value-of select="nastaveni/cas/hodiny"/>",
          "minuty": "<xsl:value-of select="nastaveni/cas/minuty"/>",
          "vteriny": "<xsl:value-of select="nastaveni/cas/vteriny"/>",
          "casove_pasmo": "<xsl:value-of select="nastaveni/cas/casove_pasmo"/>",
          "automaticky_letni_cas": "<xsl:value-of select="nastaveni/cas/automaticky_letni_cas/@enabled" />"
        },
        <xsl:value-of select="datum" />
        "datum": {
          "rok": "<xsl:value-of select="nastaveni/datum/rok"/>",
          "mesic": "<xsl:value-of select="nastaveni/datum/mesic"/>",
          "den": "<xsl:value-of select="nastaveni/datum/den"/>"
        },
        <xsl:value-of select="ovladani" />
        "ovladani": {
          "ovladac": "<xsl:value-of select="nastaveni/ovladani/ovladac"/>",
          "citlivost_mysi": {
            "osa_x": "<xsl:value-of select="nastaveni/ovladani/citlivost_mysi/osa_x"/>",
            "invertovat_mys": {
              "-horizontal": "<xsl:value-of select="nastaveni/ovladani/citlivost_mysi/invertovat_mys/@horizontal" />",
              "-vertical": "<xsl:value-of select="nastaveni/ovladani/citlivost_mysi/invertovat_mys/@vertical" />"
            },
            "osa_y": "<xsl:value-of select="nastaveni/ovladani/citlivost_mysi/osa_y"/>",
            "zrychleni": "<xsl:value-of select="nastaveni/ovladani/citlivost_mysi/zrychleni"/>",
            "posun_radku_pri_pouziti_kolecka": "<xsl:value-of select="nastaveni/ovladani/citlivost_mysi/posun_radku_pri_pouziti_kolecka"/>"
          },
          "klavesove_zkratky": {
            "krok_zpet": "<xsl:value-of select="nastaveni/ovladani/klavesove_zkratky/krok_zpet"/>",
            "krok_vpred": "<xsl:value-of select="nastaveni/ovladani/klavesove_zkratky/krok_vpred"/>",
            "snizit_jas": "<xsl:value-of select="nastaveni/ovladani/klavesove_zkratky/snizit_jas"/>",
            "zvysit_jas": "<xsl:value-of select="nastaveni/ovladani/klavesove_zkratky/zvysit_jas"/>",
            "prepinac_ticheho_rezimu": "<xsl:value-of select="nastaveni/ovladani/klavesove_zkratky/prepinac_ticheho_rezimu"/>",
            "hotovo": "<xsl:value-of select="nastaveni/ovladani/klavesove_zkratky/hotovo"/>"
          }
        },
        <xsl:value-of select="zvuk" />
        "zvuk": {
          "hlasitost_zvuku": "<xsl:value-of select="nastaveni/zvuk/hlasitost_zvuku"/>",
          "notifikacni_upozorneni": "<xsl:value-of select="nastaveni/zvuk/notifikacni_upozorneni/@enabled" />",
          "tichy_rezim": "<xsl:value-of select="nastaveni/zvuk/tichy_rezim/@enabled" />",
          "zvuk_do_sluchatek": "<xsl:value-of select="nastaveni/zvuk/zvuk_do_sluchatek/@enabled" />",
          "zvuk_z_reproduktoru": "<xsl:value-of select="nastaveni/zvuk/zvuk_z_reproduktoru/@enabled" />",
          "zvuk_z_laptopu": "<xsl:value-of select="nastaveni/zvuk/zvuk_z_laptopu/@enabled" />",
          "prostorovy_zvuk": "<xsl:value-of select="nastaveni/zvuk/prostorovy_zvuk/@enabled" />"
        },
        <xsl:value-of select="jazyk" />
        "jazyk": {
          "-lang": "<xsl:value-of select="nastaveni/jazyk/@lang"/>"
        },
        <xsl:value-of select="titulky" />
        "titulky": {
          "-lang": "<xsl:value-of select="nastaveni/titulky/@lang" />",
          "-enabled": "<xsl:value-of select="nastaveni/titulky/@enabled" />"
        },
        <xsl:value-of select="ukladani" />
        "ukladani": {
          "pridat_ucet_onedrive": "<xsl:value-of select="nastaveni/ukladani/pridat_ucet_onedrive"/>",
          "pridat_ucet_googledrive": "<xsl:value-of select="nastaveni/ukladani/pridat_ucet_googledrive"/>",
          "pridat_ucet_dropbox": "<xsl:value-of select="nastaveni/ukladani/pridat_ucet_dropbox"/>",
          "pridat_ucet_amazonclouddrive": "<xsl:value-of select="nastaveni/ukladani/pridat_ucet_amazonclouddrive"/>",
          "automaticke_ukladani": "<xsl:value-of select="nastaveni/ukladani/automaticke_ukladani/@enabled" />"
        },
        "multiplayer": "<xsl:value-of select="nastaveni/multiplayer/@port" />",
        "konzole": "<xsl:value-of select="nastaveni/konzole/@console" />",
        "verze_aplikace": "<xsl:value-of select="nastaveni/verze_aplikace/@version" />"
      }
    }
  </xsl:template>
</xsl:stylesheet>
