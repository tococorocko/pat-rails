puts "creating italian seeds"

lang_it = Language.create!(name: "it")

# Category 1

category_1 = QuestionCategory.create!(
    name: "Gravidanza e nascita",
    info: "Gravidanza e nascita",
    sort_order: 1,
    language: lang_it
)

Question.create!(
    name: "Gravidanza a rischio",
    question_text: "Gravidanza a rischio, procreazione medicalmente  assistita o con problemi di vario genere",
    valuation_factor: 0.5,
    sort_order: 1,
    question_category: category_1
)
Question.create!(
    name: "Gravidanza non desiderata",
    question_text: "Gravidanza non desiderata/non programmata",
    valuation_factor: 0.5,
    sort_order: 2,
    question_category: category_1
)
Question.create!(
    name: "Parto distocico",

    question_text: "Parto distocico o complicato (prematuro, prolungato, TC di urgenza, ventosa, forcipe, ...)",
    valuation_factor: 0.5,
    sort_order: 3,
    question_category: category_1
)
Question.create!(
    name: "Parto traumatico madre",

    question_text: "Parto traumatico per la madre e/o per il padre",
    valuation_factor: 0.5,
    sort_order: 4,
    question_category: category_1
)
Question.create!(
    name: "Separazione",

    question_text: "Separazione del neonato dalla mamma dopo la nascita",
    valuation_factor: 0.5,
    sort_order: 5,
    question_category: category_1
)

# Category 2

category_2 = QuestionCategory.create!(
    name: "Fattori di stress personale",
    info: "Fattori di stress personale",
    sort_order: 2,
    language: lang_it
)

Question.create!(name: "Con background migratorio",
    question_text: "Con background migratorio",
    valuation_factor: 1,
    sort_order: 1,
    question_category: category_2
)

Question.create!(name: "Stato di trascuratezza",
    question_text: "Stato di trascuratezza",
    valuation_factor: 1,
    sort_order: 2,
    question_category: category_2
)
Question.create!(name: "alcool o droga",
    question_text: "Problemi di dipendenza, alcool o stupefacenti di uno o entrambi i genitori",
    valuation_factor: 6,
    sort_order: 3,
    question_category: category_2
)

Question.create!(name: "Violenza o maltrattamento",
    question_text: "Esperienze di violenza / maltrattamento",
    valuation_factor: 1,
    sort_order: 4,
    question_category: category_2
)
Question.create!(name: "Vissuto di fuga guerra",
    question_text: "Vissuto di fuga / guerra",
    valuation_factor: 1,
    sort_order: 5,
    question_category: category_2
)
Question.create!(name: "Problemi di salute",
    question_text: "Problemi di salute fisica o psichica: malattie croniche, handicap, episodi di depressione, disturbi alimentari, cecità, sordomutismo o altro",
    valuation_factor: 6,
    sort_order: 6,
    question_category: category_2
)
Question.create!(name: "Formazione scolastica e professionale",
    question_text: "Formazione scolastica e professionale: scuola obbligatoria non portata a termine, nessuna formazione dopo la scuola dell'obbligo",
    valuation_factor: 1,
    sort_order: 7,
    question_category: category_2
)
Question.create!(name: "Lutto recente e/o complicato",
    question_text: "Lutto recente e/o traumatico",
    valuation_factor: 1,
    sort_order: 8,
    question_category: category_2
)
Question.create!(name: "Genitori anni",
    question_text: "Età dei genitori < 20 anni alla nascita oppure > 40 alla nascita del primo figlio",
    valuation_factor: 1,
    sort_order: 9,
    question_category: category_2
)
Question.create!(name: "Organizzazioni",
    question_text: "Difficoltà di organizzazione (appuntamenti mancati, fatica nel mantenere ritmi, ordine, ...)",
    valuation_factor: 1,
    sort_order: 10,
    question_category: category_2
)


# Category 3

category_3 = QuestionCategory.create!(
    name: "Fattori di stress familiari",
    info: "Fattori di stress familiari",
    sort_order: 3, language: lang_it
)

Question.create!(name: "Paternità sconosciuta",
    question_text: "Paternità sconosciuta o non riconosciuta",
    valuation_factor: 1,
    sort_order: 1,
    question_category: category_3
)
Question.create!(name: "Famiglia monoparentale",
    question_text: "Famiglia monoparentale",
    valuation_factor: 1,
    sort_order: 2,
    question_category: category_3
)
Question.create!(name: "Forti conflitti nella coppia, separazionez",
    question_text: "Forti conflitti nella coppia, separazione",
    valuation_factor: 1,
    sort_order: 3,
    question_category: category_3
)
Question.create!(name: "Violenza domestica",
    question_text: "Violenza domestica",
    valuation_factor: 1,
    sort_order: 4,
    question_category: category_3
)
Question.create!(name: "lavoro",
    question_text: "Assenza di uno dei genitori per lavoro, permesso di soggiorno, ricovero, detenzione o altro",
    valuation_factor: 1,
    sort_order: 5,
    question_category: category_3
)
Question.create!(name: "Presenza",
    question_text: "Poca presenza come coppia (solo presenti come genitori)",
    valuation_factor: 1,
    sort_order: 6,
    question_category: category_3
)
Question.create!(name: "Differenza tra fratelli",
    question_text: "Ridotta differenza d'età tra i fratelli: meno di 18 mesi oppure gemelli",
    valuation_factor: 1,
    sort_order: 7,
    question_category: category_3
)
Question.create!(name: "Fratelli più grandi",
    question_text: "Presenza di fratelli più grandi che impegnano tanto (comportamento difficile da gestire, malattia, autismo, handicap)",
    valuation_factor: 1,
    sort_order: 8,
    question_category: category_3
)
Question.create!(name: "Non presenti",
    question_text: "Famiglia, nonni, zii lontani, non presenti oppure in conflitto",
    valuation_factor: 1,
    sort_order: 9,
    question_category: category_3
)

# Category 4

category_4 = QuestionCategory.create!(
    name: "Fattori di stress sociale",
    info: "Fattori di stress sociale",
    sort_order: 4, language: lang_it
)

Question.create!(name: "Vive da meno di 6 mesi nel comune",
    question_text: "Vive da meno di 6 mesi nel comune",
    valuation_factor: 1,
    sort_order: 1,
    question_category: category_4
)
Question.create!(name: "Poca integrazione sociale",
    question_text: "Poca integrazione sociale, scarsi contatti al di fuori della famiglia, pochi contatti con famiglie con bambini della stessa età",
    valuation_factor: 1,
    sort_order: 2,
    question_category: category_4
)
Question.create!(name: "extrafamigliare",
    question_text: "Poco sostegno extrafamigliare: scarso aiuto dei parenti o vicini",
    valuation_factor: 1,
    sort_order: 3,
    question_category: category_4
)
Question.create!(name: "Poco in italiano",
    question_text: "Non si esprime o si esprime poco in italiano",
    valuation_factor: 1,
    sort_order: 4,
    question_category: category_4
)

# Category 5

category_5 = QuestionCategory.create!(name: "Fattori di stress materiale",
    info: "Fattori di stress materiale",
    sort_order: 5, language: lang_it
)

Question.create!(name: "Abitabilità ristretto",
    question_text: "Condizione di abitative ristrette",
    valuation_factor: 1,
    sort_order: 1,
    question_category: category_5
)
Question.create!(name: "Coabitazione",
    question_text: "Coabitazione con genitori o suoceri",
    valuation_factor: 1,
    sort_order: 2,
    question_category: category_5
)
Question.create!(name: "Disoccupazione",
    question_text: "Disoccupazione di uno o entrambi i genitori",
    valuation_factor: 1,
    sort_order: 3,
    question_category: category_5
)
Question.create!(name: "Situazione finanziaria",
    question_text: "Situazione finanziaria precaria, debiti",
    valuation_factor: 1,
    sort_order: 4,
    question_category: category_5
)
Question.create!(name: "Percepisce aiuto sociale",
    question_text: "Percepisce aiuto sociale",
    valuation_factor: 1,
    sort_order: 5,
    question_category: category_5
)

# Category 6

category_6 = QuestionCategory.create!(
    name: "protection",
    info: "Fattori protettivi",
    sort_order: 6,
    language: lang_it
)

Question.create!(
    name: "Aiuti nel contesto sociale",
    question_text: "Importanti aiuti nel contesto sociale",
    valuation_factor: -1,
    sort_order: 1,
    question_category: category_6
)
Question.create!(
    name: "Persone al di fuori",
    question_text: "Persone al di fuori della famiglia molto interessate al bambino",
    valuation_factor: -1,
    sort_order: 2,
    question_category: category_6
)
Question.create!(
    name: "Clima familiare positivo",
    question_text: "Clima familiare molto positivo",
    valuation_factor: -1,
    sort_order: 3,
    question_category: category_6
)
Question.create!(
    name: "Assistente",
    question_text: "Genitori accettano e/o ricercano aiuti (psicologo, assistente sociale, ...), esiste una rete intorno alla famiglia",
    valuation_factor: -1,
    sort_order: 4,
    question_category: category_6
)
