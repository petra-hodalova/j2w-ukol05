[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
<div class="container">
    <div class="kosik">
        <h1>Rekapitulace</h1>

        <label for="jmeno" class="radek">Jméno:</label>
        <span>${form.jmeno}</span>
     
        <label for="prijmeni" class="radek">Příjmení:</label>
       <span>${form.prijmeni}</span>

        <label for="datumNar" class="radek">Dátum narození:</label>
       <span>${form.datumNar}</span>

        <div class="radek">Pohlaví:</div>
        <span>${form.pohlavi}</span>

        <label for="turnus" class="radek">Turnus:</label>
        <span>${form.turnus}</span>

        <label for="email" class="radek">E-mail:</label>
        <span>${form.email}</span>

        <label for="telefon" class="radek">Telefon:</label>
        <span>${form.telefon}</span>

    </div>
</div>
</body>
</html>
