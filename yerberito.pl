% Hechos sobre el hinojo
uso_culinario(hinojo, condimento).
propiedad_digestiva(hinojo).
origen_antiguo(hinojo, grecia).
remedio_tradicional(hinojo, gases_flatulencias).
remedio_tradicional(hinojo, cólicos_nerviosos).
remedio_tradicional(hinojo, vómitos).
remedio_tradicional(hinojo, problemas_respiratorios).
remedio_tradicional(hinojo, obstrucción_mucosa_pecho).

% Hechos sobre el jalapa
nombre_indigena(jalapa, cacamoti).
propiedad_purgante(jalapa).
uso_tradicional(jalapa, disentería).
uso_tradicional(jalapa, estreñimiento).
uso_tradicional(jalapa, indigestión).
uso_tradicional(jalapa, apoplejía).
uso_tradicional(jalapa, congestión_cerebral).

% Hechos sobre la ipecacuana
planta_comun(ipecacuana, cafetales).
tratamiento_tos(ipecacuana).

% Reglas
raiz_cocida(jalapa) :- propiedad_purgante(jalapa), uso_tradicional(jalapa, _).

preparacion(ipecacuana, raiz_al_sol).

remedio_tradicional(hinojo, tos) :-
    planta_comun(ipecacuana, cafetales),
    preparacion(ipecacuana, raiz_al_sol).


% Hechos sobre el abrojo
planta(abrojo).
habitat(abrojo, áreas_arenosas_pedregosas).
regiones(abrojo, méxico).
uso(abrojo, diurético).
uso(abrojo, afecciones_pecho).
uso(abrojo, inflamación_ojos).
uso(abrojo, inflamación_hígado).
uso(abrojo, circulación_sangre).
preparación(abrojo, cocer_raíz).

% Hechos sobre la acacia
planta(acacia).
tipo(acacia, arbusto).
producto(acacia, goma_arábiga).
uso(acacia, alivio_garganta).
uso(acacia, dolor_garganta).
uso(acacia, tos).
uso(acacia, bronquitis).
uso(acacia, quemaduras).
preparación(acacia, chupar_goma_arábiga).
preparación(acacia, cataplasma_goma_arábiga).

% Hechos sobre el acanto
planta(acanto).
origen(acanto, inspiración_columnas_corintio).
uso(acanto, desinflamar_picadura_araña).
uso(acanto, almorranas).
uso(acanto, ardor_orina).
uso(acanto, heridas).
uso(acanto, dispesia).
uso(acanto, disentería).
uso(acanto, aperitivo).
uso(acanto, antivenenoso).
uso(acanto, emoliente).
preparación(acanto, aplicar_hojas).
preparación(acanto, té_hojas).

% Hechos sobre la aceitilla
planta(aceitilla).
temporada(aceitilla, agosto_octubre).
uso(aceitilla, cansancio_intelectual).
uso(aceitilla, depresión_nerviosa).
uso(aceitilla, histeria).
uso(aceitilla, neuras).
preparación(aceitilla, té_toda_planta).

% Hechos sobre la achicoria
planta(achicoria).
uso(achicoria, diurético).
uso(achicoria, depurativo).
uso(achicoria, digestión).
uso(achicoria, cólicos_biliosos).
uso(achicoria, estreñimiento).
uso(achicoria, purificación_riñones).
uso(achicoria, café_raíz).
sabor(achicoria, amargo).
preparación(achicoria, té_hojas_secas).
preparación(achicoria, té_hojas_verdes).

% Reglas adicionales
uso_diurético(Planta) :- uso(Planta, diurético).
uso_digestivo(Planta) :- uso(Planta, digestión).
uso_antivenenoso(Planta) :- uso(Planta, antivenenoso).



% Tratamiento de enfermedades comunes con plantas
% Nota: Las plantas son utilizadas como estimulantes para fortalecer el organismo o como calmantes para mitigar el dolor, no como remedios definitivos.

% Abcesos
tratamiento(abcesos, malva).

% Abceso hepático
tratamiento(abceso_hepático, zarzaparrilla).

% Acidez estomacal
tratamiento(acidez_estomacal, anís).
tratamiento(acidez_estomacal, perejil).

% Ácido úrico
tratamiento(ácido_úrico, sanguinaria).

% Acné
tratamiento(acné, árnica).

% Aftas
tratamiento(aftas, llantén).

% Agotamiento
tratamiento(agotamiento, salvia).

% Agruras
tratamiento(agruas, yerba_buena).
tratamiento(agruas, manzanilla).

% Albuminaria
tratamiento(albuminaria, encino_rojo).

% Alcoholismo
tratamiento(alcoholismo, pimiento_rojo).

% Almorranas
tratamiento(almorranas, salvia).

% Anemia
tratamiento(anemia, ajenjo).
tratamiento(anemia, germen_de_trigo).
tratamiento(anemia, canela).

% Anginas
tratamiento(anginas, eucalipto).
tratamiento(anginas, cebada).
tratamiento(anginas, salvia).
tratamiento(anginas, tabachina).

% Anorexia
tratamiento(anorexia, ajenjo).
tratamiento(anorexia, yerba_buena).
tratamiento(anorexia, genciana).

% Arteriosclerosis
tratamiento(arteriosclerosis, limón).
tratamiento(arteriosclerosis, genciana).
tratamiento(arteriosclerosis, cardo).
tratamiento(arteriosclerosis, zarzaparrilla).
tratamiento(arteriosclerosis, árnica).
tratamiento(arteriosclerosis, chicalote).
tratamiento(arteriosclerosis, toronja).

% Asma
tratamiento(asma, eucalipto).
tratamiento(asma, marrubio).
tratamiento(asma, salvia).

% Bazo
tratamiento(bazo, uva).
tratamiento(bazo, cerezo).

% Bronquitis
tratamiento(bronquitis, eucalipto).
tratamiento(bronquitis, borraja).
tratamiento(bronquitis, tilo).
tratamiento(bronquitis, marrubio).
tratamiento(bronquitis, rábano).

% Bronconeumonía
tratamiento(bronconeumonía, eucalipto).
tratamiento(bronconeumonía, mostaza).

% Caída del cabello
tratamiento(caída_cabello, ortiga).
tratamiento(caída_cabello, espinosilla).
tratamiento(caída_cabello, marrubio).
tratamiento(caída_cabello, romero).

% Calambres
tratamiento(calambres, anís).
tratamiento(calambres, tila).
tratamiento(calambres, manzanilla).
tratamiento(calambres, ajenjo).

% Cálculos
tratamiento(cálculos, diente_león).
tratamiento(cálculos, aceite_oliva).
tratamiento(cálculos, cabellos_elote).
tratamiento(cálculos, cola_caballo).

% Callos
tratamiento(callos, ajo).
tratamiento(callos, cebolla).

% Caries
tratamiento(caries, hiedra).
tratamiento(caries, cola_caballo).

% Caspa
tratamiento(caspa, ortiga).
tratamiento(caspa, limón).
tratamiento(caspa, romero).

% Ciática
tratamiento(ciática, mastuerzo).
tratamiento(ciática, higuera).
tratamiento(ciática, sauco).

% Circulación
tratamiento(circulación, toronjil).
tratamiento(circulación, sanguinaria).
tratamiento(circulación, salvia).

% Cistitis
tratamiento(cistitis, cola_caballo).
tratamiento(cistitis, doradilla).
tratamiento(cistitis, ajo).
tratamiento(cistitis, cabellos_elote).

% Cólicos
tratamiento(cólicos, menta).
tratamiento(cólicos, hinojo).
tratamiento(cólicos, manzanilla).
tratamiento(cólicos, toronjil).

% Colitis
tratamiento(colitis, linaza).
tratamiento(colitis, anís).
tratamiento(colitis, romero).

% Contusiones
tratamiento(contusiones, árnica).
tratamiento(contusiones, laurel).
tratamiento(contusiones, brionia).

% Corazón
tratamiento(corazón, salvia).
tratamiento(corazón, tejocote).

% Depurativos de la sangre
tratamiento(depurativos_sangre, diente_león).
tratamiento(depurativos_sangre, apio).
tratamiento(depurativos_sangre, sanguinaria).
tratamiento(depurativos_sangre, berro).

% Diabetes
tratamiento(diabetes, matarique).
tratamiento(diabetes, tronadora).
tratamiento(diabetes, eucalipto).

% Diarrea
tratamiento(diarrea, capulín).
tratamiento(diarrea, mezquite).
tratamiento(diarrea, linaza).
tratamiento(diarrea, membrillo).
tratamiento(diarrea, arroz).
tratamiento(diarrea, cebada).
tratamiento(diarrea, guayabo).
tratamiento(diarrea, albahaca).
tratamiento(diarrea, granada).
tratamiento(diarrea, manzanilla).


% Tratamientos para enfermedades utilizando plantas
% Nota: Las plantas se utilizan como estimulantes o calmantes, no como curas definitivas.

% Difteria
tratamiento(difteria, limón).
tratamiento(difteria, naranja).

% Disentería
tratamiento(disentería, tamarindo).
tratamiento(disentería, chaparro_amargoso).

% Dispepsia
tratamiento(dispepsia, anís).
tratamiento(dispepsia, menta).
tratamiento(dispepsia, yerbabuena).
tratamiento(dispepsia, diente).
tratamiento(dispepsia, té_limon).
tratamiento(dispepsia, tabaquillo).

% Dolor
tratamiento(dolor, anís_estrella).
tratamiento(dolor, valeriana).
tratamiento(dolor, manzanilla).

% Dolores musculares
tratamiento(dolores_musculares, alcanfor).

% Empacho
tratamiento(empacho, tamarindo).

% Enteritis
tratamiento(enteritis, linaza).
tratamiento(enteritis, cedrón).
tratamiento(enteritis, llantén).

% Epilepsia
tratamiento(epilepsia, valeriana).

% Erisipela
tratamiento(erisipela, hiedra).
tratamiento(erisipela, zanahoria).

% Estreñimiento
tratamiento(estreñimiento, ciruela).
tratamiento(estreñimiento, linaza).
tratamiento(estreñimiento, chía).
tratamiento(estreñimiento, tamarindo).
tratamiento(estreñimiento, agar).

% Faringitis
tratamiento(faringitis, eucalipto).
tratamiento(faringitis, labanda).
tratamiento(faringitis, anacahuite).

% Flatulencias
tratamiento(flatulencias, apio).
tratamiento(flatulencias, perejil).
tratamiento(flatulencias, anís).
tratamiento(flatulencias, hinojo).
tratamiento(flatulencias, toronjil).

% Flebitis
tratamiento(flebitis, árnica).
tratamiento(flebitis, alfalfa).
tratamiento(flebitis, lino).
tratamiento(flebitis, malvavisco).
tratamiento(flebitis, romero).
tratamiento(flebitis, quina).

% Flemas
tratamiento(flemas, genciana).
tratamiento(flemas, orégano).

% Forúnculos
tratamiento(forúnculos, hiedra).

% Gonorrea
tratamiento(gonorrea, cola_caballo).
tratamiento(gonorrea, doradilla).
tratamiento(gonorrea, zarzaparrilla).

% Gota
tratamiento(gota, apios).
tratamiento(gota, cerezo).
tratamiento(gota, limón).

% Grietas del ano
tratamiento(grietas_ano, encina).

% Halitosis
tratamiento(halitosis, hinojo).

% Hemorragia interna
tratamiento(hemorragia_interna, mastuerzo).
tratamiento(hemorragia_interna, ortiga).

% Hepatitis
tratamiento(hepatitis, alcachofa).
tratamiento(hepatitis, prodigiosa).
tratamiento(hepatitis, cáscara_sagrada).

% Hernia
tratamiento(hernia, helecho).
tratamiento(hernia, ricino).
tratamiento(hernia, tabaco).

% Herpes
tratamiento(herpes, linaza).
tratamiento(herpes, llantén).

% Heridas
tratamiento(heridas, árnica).

% Hidropesía
tratamiento(hidropesía, alcachofa).
tratamiento(hidropesía, cardo).
tratamiento(hidropesía, perejil).
tratamiento(hidropesía, sauco).
tratamiento(hidropesía, benos).

% Insomnio
tratamiento(insomnio, pasiflora).
tratamiento(insomnio, menta).
tratamiento(insomnio, manzanilla).

% Impotencia sexual
tratamiento(impotencia_sexual, yohimbo).
tratamiento(impotencia_sexual, nuez_vomica).
tratamiento(impotencia_sexual, aguacate).


% Jaqueca
tratamiento(jaqueca, manzanilla).
tratamiento(jaqueca, valeriana).
tratamiento(jaqueca, tila).
tratamiento(jaqueca, chicalote).
% Lactancia
tratamiento(lactancia, hinojo).
tratamiento(lactancia, anis).
tratamiento(lactancia, menta).
tratamiento(lactancia, perejil).
tratamiento(lactancia, zanahoria).
% Laringitis
tratamiento(laringitis, aconito).
tratamiento(laringitis, borraja).
tratamiento(laringitis, cebolla).
tratamiento(laringitis, rosa).
tratamiento(laringitis, benjui).
tratamiento(laringitis, encino).
% Leucorrea
tratamiento(leucorrea, encino).
tratamiento(leucorrea, pino).
tratamiento(leucorrea, enebro).
tratamiento(leucorrea, genciana).
% Lombrices
tratamiento(lombrices, ajenjo).
tratamiento(lombrices, ajo).
tratamiento(lombrices, cebolla).
tratamiento(lombrices, aguacate).
tratamiento(lombrices, papaya).
% Llagas
tratamiento(llagas, eucalipto).
tratamiento(llagas, sanguinaria).
% Malaria
tratamiento(malaria, quina).
tratamiento(malaria, girasol).
tratamiento(malaria, eucalipto).
tratamiento(malaria, cardo).
% Menopausia
tratamiento(menopausia, azahar).
tratamiento(menopausia, tila).
tratamiento(menopausia, quina_roja).
% Menstruación
tratamiento(menstruacion, azafran).
tratamiento(menstruacion, hamamelis).
tratamiento(menstruacion, anis_estrella).
tratamiento(menstruacion, ruda).
tratamiento(menstruacion, ajenjo).
tratamiento(menstruacion, manzanilla).
tratamiento(menstruacion, apio).
tratamiento(menstruacion, isopo).
% Muelas
tratamiento(muelas, clavo).
tratamiento(muelas, hiedra).
% Nauseas
tratamiento(nauseas, anis).
tratamiento(nauseas, ajenjo).
tratamiento(nauseas, menta).
tratamiento(nauseas, salvia).
% Neuralgias
tratamiento(neuralgias, manzanilla).
tratamiento(neuralgias, menta).
tratamiento(neuralgias, valeriana).
tratamiento(neuralgias, boldo).
% Neurastenia
tratamiento(neurastenia, pasiflora).
tratamiento(neurastenia, te_negro).
tratamiento(neurastenia, mate).
tratamiento(neurastenia, valeriana).
% Nefritis
tratamiento(nefritis, linaza).
tratamiento(nefritis, cebada).
tratamiento(nefritis, ruda).
tratamiento(nefritis, doradilla).
tratamiento(nefritis, esparrago).
% Obesidad
tratamiento(obesidad, toronjil).
tratamiento(obesidad, limon).
tratamiento(obesidad, malva).
tratamiento(obesidad, esparrago).
% Oidos
tratamiento(oidos, aceite_de_oliva).
tratamiento(oidos, llanten).
tratamiento(oidos, hiedra).
% Ojos
tratamiento(ojos, manzanilla).
tratamiento(ojos, limon).
tratamiento(ojos, salvia).
tratamiento(ojos, ruda).
tratamiento(ojos, rosal).
% Paludismo
tratamiento(paludismo, ajenjo).
tratamiento(paludismo, quina).
% Pecas
tratamiento(pecas, berro).
tratamiento(pecas, genciana).
tratamiento(pecas, rabano).
tratamiento(pecas, papaya).
% Pies olorosos
tratamiento(pies_olorosos, laurel).
tratamiento(pies_olorosos, encina).
% Prostata
tratamiento(prostata, cola_de_caballo).
% Pulmonia
tratamiento(pulmonia, eucalipto).
tratamiento(pulmonia, ocote).
tratamiento(pulmonia, gordolobo).
tratamiento(pulmonia, borraja).
tratamiento(pulmonia, suaco).
% Quemaduras
tratamiento(quemaduras, linaza).
tratamiento(quemaduras, cebolla).
tratamiento(quemaduras, hiedra).
tratamiento(quemaduras, gordolobo).
% Raquitismo
tratamiento(raquitismo, nogal).
% Reumatismo
tratamiento(reumat


% Oídos
tratamiento(oidos, aceite_de_oliva).
tratamiento(oidos, llanten).
tratamiento(oidos, hiedra).

% Ojos
tratamiento(ojos, manzanilla).
tratamiento(ojos, limon).
tratamiento(ojos, salvia).
tratamiento(ojos, ruda).
tratamiento(ojos, rosal).

% Paludismo
tratamiento(paludismo, ajenjo).
tratamiento(paludismo, quina).

% Pecas
tratamiento(pecas, berro).
tratamiento(pecas, genciana).
tratamiento(pecas, rabano).
tratamiento(pecas, papaya).

% Pies olorosos
tratamiento(pies_olorosos, laurel).
tratamiento(pies_olorosos, encina).

% Próstata
tratamiento(prostata, cola_de_caballo).

% Pulmonía
tratamiento(pulmonia, eucalipto).
tratamiento(pulmonia, ocote).
tratamiento(pulmonia, gordolobo).
tratamiento(pulmonia, borraja).
tratamiento(pulmonia, sauco).

% Quemaduras
tratamiento(quemaduras, linaza).
tratamiento(quemaduras, cebolla).
tratamiento(quemaduras, hiedra).
tratamiento(quemaduras, gordolobo).

% Raquitismo
tratamiento(raquitismo, nogal).

% Reumatismo
tratamiento(reumatismo, ajo).
tratamiento(reumatismo, apio).
tratamiento(reumatismo, borraja).
tratamiento(reumatismo, gobernadora).
tratamiento(reumatismo, pino).
tratamiento(reumatismo, romero).
tratamiento(reumatismo, sanguinaria).
tratamiento(reumatismo, marrubio).
tratamiento(reumatismo, tabaco).

% Riñones
tratamiento(riñones, cabellos_de_elote).
tratamiento(riñones, cola_de_caballo).
tratamiento(riñones, apio).

% Ronquera
tratamiento(ronquera, eucalipto).
tratamiento(ronquera, pino).
tratamiento(ronquera, gordolobo).

% Sabañones
tratamiento(sabañones, ajo).
tratamiento(sabañones, cebolla).

% San Vito
tratamiento(san_vito, valeriana).

% Sarampión
tratamiento(sarampion, borraja).
tratamiento(sarampion, ortiga).
tratamiento(sarampion, sauco).

% Sarna
tratamiento(sarna, ajo).
tratamiento(sarna, alcanfor).
tratamiento(sarna, menta).
tratamiento(sarna, tornillo).
tratamiento(sarna, romero).

% Sed
tratamiento(sed, limon).
tratamiento(sed, tamarindo).
tratamiento(sed, pirul).

% Solitaria
tratamiento(solitaria, semilla_de_calabaza).

% Sudoración
tratamiento(sudoracion, encina).

% Tifoidea
tratamiento(tifoidea, borraja).
tratamiento(tifoidea, quina).
tratamiento(tifoidea, canela).
tratamiento(tifoidea, romero).

% Tiña
tratamiento(tiña, berro).
tratamiento(tiña, tila).
tratamiento(tiña, tamarindo).
tratamiento(tiña, salvia).

% Tos
tratamiento(tos, eucalipto).
tratamiento(tos, capulin).
tratamiento(tos, cedron).
tratamiento(tos, salvia).
tratamiento(tos, malva).

% Tos Ferina
tratamiento(tos_ferina, gelsemio).
tratamiento(tos_ferina, quina).
tratamiento(tos_ferina, rabano).
tratamiento(tos_ferina, violeta).

% Tuberculosis
tratamiento(tuberculosis, jugo_de_vastago).
tratamiento(tuberculosis, ajo).
tratamiento(tuberculosis, eucalipto).
tratamiento(tuberculosis, pirul).
tratamiento(tuberculosis, pino).
tratamiento(tuberculosis, roble).

% Úlcera
tratamiento(ulcera, sanguinaria).
tratamiento(ulcera, cola_de_caballo).
tratamiento(ulcera, girasol).

% Urticaria
tratamiento(urticaria, limon).
tratamiento(urticaria, ruibarbo).

% Várices
tratamiento(varices, hamamelis).
tratamiento(varices, castaño_de_indias).
tratamiento(varices, toronjil).

% Vejiga
tratamiento(vejiga, apio).
tratamiento(vejiga, cola_de_caballo).
tratamiento(vejiga, ortiga).
tratamiento(vejiga, malva).

% Verrugas
tratamiento(verrugas, leche_de_higuera).
tratamiento(verrugas, cebolla).
tratamiento(verrugas, nogal).

% Vértigos
tratamiento(vertigos, albahaca).
tratamiento(vertigos, espino).

% Vómitos
tratamiento(vomitos, menta).
tratamiento(vomitos, tila).
tratamiento(vomitos, marrubio).
tratamiento(vomitos, valeriana).
tratamiento(vomitos, salvia).

% Voz
tratamiento(voz, cilantro).
tratamiento(voz, ajo).
tratamiento(voz, limon).
tratamiento(voz, pino).

% Falta de vitaminas
tratamiento(falta_de_vitaminas, alfalfa).
tratamiento(falta_de_vitaminas, espinacas).
tratamiento(falta_de_vitaminas, acelga).
tratamiento(falta_de_vitaminas, berro).
tratamiento(falta_de_vitaminas, cebolla).
tratamiento(falta_de_vitaminas, limon).
tratamiento(falta_de_vitaminas, zanahoria).
tratamiento(falta_de_vitaminas, aceite_de_bacalao).

