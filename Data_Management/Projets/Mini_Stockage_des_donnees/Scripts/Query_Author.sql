SELECT
  *,
  genre.*,
  auteur.*,
  editeur.*,
  livre.Auteur
FROM livre
  INNER JOIN genre
    ON livre.Genre = genre.Nom
  INNER JOIN auteur
    ON livre.Auteur = auteur.Nom_de_plume
  INNER JOIN editeur
    ON livre.Edition = editeur.Nom
WHERE livre.Auteur = "Kuang"