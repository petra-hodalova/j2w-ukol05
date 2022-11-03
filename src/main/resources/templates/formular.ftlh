[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
<div class="container">
    <form class="kosik" action="/" method="post">
        <h1>Registrace na tábor</h1>

        <label for="jmeno" class="radek">Jméno:</label>
        [@spring.formInput path="form.jmeno" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="prijmeni" class="radek">Příjmení:</label>
        [@spring.formInput path="form.prijmeni" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="datumNar" class="radek">Dátum narození (dd.mm.rrrr):</label>
        [@spring.formInput path="form.datumNar" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">Pohlaví:</div>
        <div class="skupina">
            <div>
                <input id="pohlavi1" type="radio" name="pohlavi" value="dívka"/>
                <label for="pohlavi1">Dívka</label>
            </div>
            <div>
                <input id="pohlavi2" type="radio" name="pohlavi" value="kluk"/>
                <label for="pohlavi2">Kluk</label>
            </div>
        </div>
        [@spring.bind "form.pohlavi"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="turnus" class="radek">Turnus:</label>
        [@spring.formSingleSelect path="form.turnus" options={
        "": "",
        "turnus-1": "5.-11. červenec 2022",
        "turnus-2": "12.-18. červenec 2022",
        "turnus-3": "19.-25. červenec 2022"
        } /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="email" class="radek">E-mail:</label>
        [@spring.formInput path="form.email" fieldType="email" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="telefon" class="radek">Telefon:</label>
        [@spring.formInput path="form.telefon" fieldType="telefon" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek controls">
            <button type="submit">Objednat</button>
        </div>
    </form>
</div>
</body>
</html>
