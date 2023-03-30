<?php require APPROOT . '/views/includes/head.php'; ?>
<h3><u><?= $data['title']; ?></u></h3><br>

<table>
    <thead>
        <th>Overzicht</th>
    </thead>
    <thead>
        <th>voornaam</th>
        <th>Tussenvoegsel</th>
        <th>Achternaam</th>
        <th>Aantalpunten</th>
        <th>Wijzigen</th>
    </thead>
    <tbody>
        <?= $data['rows']; ?>
    </tbody>
</table>

<a href="<?= URLROOT;?>/homepages/index">home</a>
<?php require APPROOT . '/views/includes/footer.php'; ?>