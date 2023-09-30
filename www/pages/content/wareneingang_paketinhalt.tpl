<!-- gehort zu tabview -->
<div id="tabs">
  <ul>
    [BEFORETAB1]<li><a href="#tabs-1">[TAB1TEXT]</a></li>[AFTERTAB1]
    [BEFORETAB2]<li><a href="#tabs-2">[TAB2TEXT]</a></li>[AFTERTAB2]
    [BEFORETAB3]<li><a href="#tabs-3">[TAB3TEXT]</a></li>[AFTERTAB3]
  </ul>
<!-- ende gehort zu tabview -->

<!-- erstes tab -->
  <input type="hidden" id="paketannahme_id" value="[ID]" />
  [BEFORETAB1]
  <div id="tabs-1">

    [TAB1START]

    [MESSAGE1]
    <form action="" method="post">
      <div class="row">
        <div class="row-height">
          <div class="col-xs-12 col-md-10 col-md-height">
            <div class="inside inside-full-height">
              <fieldset>
                <legend>{|[LEGENDE]|}</legend>
                <table>
                  <tr><td>{|Lieferschein-Nr.|}:</td><td><input type=text size="40" name="lsnr" value=[LSNR]></td></tr>
                  <tr><td>{|Rechnung-Nr.|}:</td><td><input type=text size="40" name="renr" value=[RENR]></td></tr>
                  <tr><td>{|Ziellager|}:</td><td><input type=text size="40" name="ziellager" id="ziellager" value=[LAGER]></td></tr>
                  <tr><td>{|Bemerkung|}:</td><td><textarea rows="5" cols="40" name="bemerkung">[BEMERKUNG]</textarea></td></tr>
                  <tr><td><input type="submit" name="speichern" class="btnGreenNew" value="Speichern"></td>
                </table>
              </fieldset>
            </div>
          </div>
          <div class="col-xs-12 col-md-2 col-md-height">
            <div class="inside inside-full-height">
              <fieldset>
                <legend>{|Aktionen|}</legend>
                [BUTTONS]
                [BEFOREFRM]
                [AFTERFRM]
                  [DISTRIINHALTBUTTONS]
                  [ISLIEFERANTSTART]
             <!--     <button name="submit" class="ui-button-icon" style="width:100%;" value="fuellen">{|Aus Bestellungen f&uuml;llen|}</button>
                  <button name="submit" class="ui-button-icon" style="width:100%;" value="leeren">{|Leeren|}</button> -->
                  [ISLIEFERANTENDE]
                  [BEFOREMANUELLERFASSEN]
                  <button name="submit" class="ui-button-icon" style="width:100%;" value="manuellerfassen">{|Artikel manuell erfassen|}</button>
                  [AFTERMANUELLERFASSEN]
                [BEFOREFRM]
                [AFTERFRM]
                <!--<button name="submit" class="ui-button-icon" style="width:100%;" value="speichern">{|Speichern|}</button> -->
                <button name="submit" class="ui-button-icon" style="width:100%;" value="buchen">{|Buchen|}</button>
                <button name="submit" class="ui-button-icon" style="width:100%;" value="abschliessen">{|Abschlie&szlig;en|}</button>
              </fieldset>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="row-height">
          <div class="col-xs-12 col-md-10 col-md-height">
            <div class="inside-white inside-full-height">
                <form action="" method="post">   
                  [TAB1]
                </form>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="row-height">
          <div class="col-xs-12 col-md-10 col-md-height">
            <div class="inside-white inside-full-height">
              [TAB1_SECOND]
            </div>
          </div>
        </div>
      </div>
    </form>
    [TAB1ENDE]
  </div>
  [AFTERTAB1]
  [BEFORETAB2]
  <div id="tabs-2">

    [TAB2START]
    [MESSAGE2]

    <div class="row">
      <div class="row-height">
        <div class="col-xs-12 col-md-10 col-md-height">
          <div class="inside-white inside-full-height">
            [TAB2]
            <div class="center">[BUTTONS2]</div>
          </div>
        </div>
        <div class="col-xs-12 col-md-2 col-md-height">
          <div class="inside inside-full-height">
            <fieldset>
              <legend>{|Aktionen|}</legend>
              [BUTTONS]
            </fieldset>
          </div>
        </div>
      </div>
    </div>
    [TAB2ENDE]
  </div>
  [AFTERTAB2]
  [BEFORETAB3]
  <div id="tabs-3">
    [TAB3START]
    [MESSAGE3]
    <div class="row">
      <div class="row-height">
        <div class="col-xs-12 col-md-10 col-md-height">
          <div class="inside-white inside-full-height">
            [TAB3]
          </div>
        </div>
        <div class="col-xs-12 col-md-2 col-md-height">
          <div class="inside inside-full-height">
            <fieldset>
              <legend>{|Aktionen|}</legend>
              [BUTTONS]
            </fieldset>
          </div>
        </div>
      </div>
    </div>
    [TAB3ENDE]
  </div>
  [AFTERTAB3]
</div>
<script type="text/javascript">
  $(document).ready(function() {
    $( "#tabs" ).tabs( "option", "active", [TABINDEX]);
    if($('#frmWareneingangDistribution').length) {
      $('#btnabschliessen').on('click',function(){
        $('#frmWareneingangDistribution').append('<input type="hidden" value="1" name="abschliessen" />');
        $('#frmWareneingangDistribution').find('[name="submit"]').trigger('click');
      });
    }
  });
</script>
