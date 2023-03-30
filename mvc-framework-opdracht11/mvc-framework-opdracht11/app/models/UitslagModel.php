<?php
    class UitslagModel
    {
        private $db;
        public $helper;

        public function __construct()
        {
            $this->db = new Database();
        }

        public function getPersoon() 
        {
            $sql = "SELECT persoon.voornaam,
                           persoon.tussenvoegsel,
                           persoon.achternaam,
                           persoon.datumaangemaakt,
                           uitslag.aantalpunten,
                           uitslag.id
                    FROM persoon
                    INNER JOIN uitslag
                    ON uitslag.persoon_id = persoon.id
                    ORDER BY uitslag.aantalpunten DESC;";
            $this->db->query($sql);
            $result = $this->db->resultSet();
            return $result;
        }

        public function getPersoonById($Id)
        {
            $sql = "SELECT persoon.voornaam,
                           persoon.tussenvoegsel,
                           persoon.achternaam,
                           persoon.datumaangemaakt,
                        FROM persoon
                        WHERE Id = :Id;";
            $this->db->query($sql);
            $this->db->bind(':Id', $Id, PDO::PARAM_INT);
            $result = $this->db->single();
            return $result;
        }

        public function getUitslag($Id)
        {
            $sql = "SELECT uitslag.aantalpunten,
                            uitslag.datum,
                            uitslag.id

                            FROM       Persoon
                            INNER JOIN Spel
                            ON         Spel.Persoon_id = Persoon.id
                            INNER JOIN Uitslag
                            ON         Uitslag.Spel_id = Spel.id
                            WHERE      Persoon.id = :Id
                            ORDER BY Persoon.datum ASC";
            $this->db->query($sql);
            $this->db->bind(':Id', $Id, PDO::PARAM_INT);
            $result = $this->db->resultSet();
            return $result;
        }
    }