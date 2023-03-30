<?php
class Uitslag extends Controller {

    private $UitslagModel;

    public function __construct() {
        $this->UitslagModel = $this->model('UitslagModel');
    }

    public function index() {
        /**
         * Haal alle instructeurs op uit de model
         */
        $persoon = $this->UitslagModel->getPersoon();

        /**
         * Maak tabelrijen van de opgehaalde data over de instructeurs
         */
        $rows = '';
        foreach ($persoon as $value){
        $rows .= "<tr>
                    <td>$value->Voornaam</td>
                    <td>$value->Tussenvoegsel</td>
                    <td>$value->Achternaam</td>
                    <td>$value->Aantalpunten</td>
                    <td>$value->Datum</td>
                    <td><a href='" . URLROOT . "/uitslagen/wijzigen/$value->Id'><i class='bi bi-car-front-fill'></i></a></td>
                    </tr>";
        }
        
        /**
         * Stuur de informatie door naar de view
         */
        $data = [
        'title' => 'uitslagen',
        'amountOfInstructeurs' => sizeof($persoon),
        'rows' => $rows
        ];
        $this->view('/uitslagen/index', $data);
    }

    public function wijzigen($Id) 
    {
        $persoon = $this->UitslagModel->getPersoonById($Id);

        $gebruikteVoertuigen = $this->UitslagModel->getGebruikteVoertuigen($Id);

        if (sizeOf($gebruikteVoertuigen) == 0 ) {
            $rows = "<tr><td colspan='6'>Er zijn op dit moment nog geen voertuigen toegewezen aan deze instructeur</td></tr>";
            header('Refresh:3; url=' . URLROOT . '/uitslagen/index');
        } else {
            $rows = '';
            foreach ($gebruikteVoertuigen as $value){
            $rows .= "<tr>
                        <td>$value->TypeVoertuig</td>
                        <td>$value->Type</td>
                        <td>$value->Kenteken</td>
                        <td>$value->Bouwjaar</td>
                        <td>$value->AantalSterren</td>
                        <td><a href='" . URLROOT . "/uitslagen/wijzigen/$value->Id'><i class='bi bi-car-front-fill'></i></a></td>
                        </tr>";
            }
        }
        $data = [
            'title' => 'Overzicht Speler',
            'voornaam' => $persoon->Voornaam,
            'tussenvoegsel' => $persoon->Tussenvoegsel,
            'achternaam' => $persoon->Achternaam,
            'aantalpunten' => $uitslag->Aantalpunten,
            'rows' => $rows,
        ];
        $this->view('/uitslagen/wijzigen', $data);
    }
}