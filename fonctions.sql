
    /* Ex 1 - Comparaison de longueurs */
DROP FUNCTION calculer_longueur_max(chaine1 varchar,chaine2 varchar);
CREATE OR REPLACE FUNCTION calculer_longueur_max(chaine1 varchar,chaine2 varchar)
RETURNS integer 
AS
$function$

    BEGIN
      RAISE INFO 'Debut fonction';

     RAISE INFO 'Comparaison';

        IF length(chaine1) > length(chaine2) THEN
            return length(chaine1);
        END IF;
            return length(chaine2);
       
     RAISE INFO 'Fin fonction';
    END;
     
      $function$
    LANGUAGE plpgsql ;

     /* Ex 2 - Nombre  d'occurrences */
    /*version 1 : boucle FOR 

    DROP FUNCTION nb_occurences(caractere varchar ,chaine varchar,indice_debut integer,indice_fin integer) 
    CREATE OR REPLACE FUNCTION nb_occurences(caractere varchar ,chaine varchar,indice_debut integer,indice_fin integer)
    RETURNS integer
    AS
    $function$
        DECLARE
        count integer ;
        BEGIN
         RAISE INFO 'Debut fonction';
        indice_debut :< length(chaine);
        indice_fin :>length(chaine);

        FOR caractere in chaine BETWEEN indice_debut and indice_fin
            IF caractere == indice_debut or caracterer == indice_fin
            count := count+1
*/

  /*version 2 : boucle LOOP/EXIT 
  DROP FUNCTION nb_occurences(caractere varchar ,chaine varchar,indice_debut integer,indice_fin integer) 
    CREATE OR REPLACE FUNCTION nb_occurences(caractere varchar ,chaine varchar,indice_debut integer,indice_fin integer)
    RETURNS integer
    AS
    $function$
        DECLARE
        BEGIN
        
         END;
     
      $function$
    LANGUAGE plpgsql ; 

*/

/*version 3 : boucle WHILE 
DROP FUNCTION nb_occurences(caractere varchar ,chaine varchar,indice_debut integer,indice_fin integer) 
    CREATE OR REPLACE FUNCTION nb_occurences(caractere varchar ,chaine varchar,indice_debut integer,indice_fin integer)
    RETURNS integer
    AS
    $function$
        DECLARE
        BEGIN
        
         END;
     
      $function$
    LANGUAGE plpgsql ;
*/
/* Ex 3 -  Nombre de jour  */

    DROP FUNCTION getNbJourParMois(ladate date); 
    CREATE OR REPLACE FUNCTION getNbJourParMois(ladate date)
    RETURNS integer
    AS
    $function$
        
        BEGIN
        RAISE INFO 'Debut fonction';
          return extract(days FROM date_trunc('month', current_date) + interval '1 month - 1 day');
         END;
      $function$
    LANGUAGE plpgsql ; 

/* Ex 4 -  Dates au format FR  */

 DROP FUNCTION dateSqlToDatefr(datesql date); 
    CREATE OR REPLACE FUNCTION dateSqlToDatefr(datesql date)
    RETURNS varchar
    AS
    $function$
   BEGIN
        RAISE INFO 'Debut fonction';
        return TO_CHAR(datesql :: DATE, 'dd/mm/yyyy');
	END;
$function$
 language plpgsql;

  /* Ex 5 -  Nom du jour*/ 

 DROP FUNCTION getNomJour(date date); 
    CREATE OR REPLACE FUNCTION getNomJour(date date)
 RETURNS varchar
    AS
    $function$
    DECLARE 
    jour varchar :=extract(dow from date) ;
BEGIN
        RAISE INFO 'Debut fonction';
		return TO_CHAR(date :: DATE, 'Day');
    
	END;
$function$ 
language plpgsql;

  
