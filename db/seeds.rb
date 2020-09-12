# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
Question.destroy_all
QuestionCategory.destroy_all
Address.destroy_all
AddressCategory.destroy_all
Language.destroy_all
Severity.destroy_all

Language.create!(name: "de")
Language.create!(name: "it")
Language.create!(name: "fr")

Severity.create!(name: "standard", value: 1)
Severity.create!(name: "medium", value: 2)
Severity.create!(name: "high", value: 3)

QuestionCategory.create!(name: "Gravidanza e nascita", info: "Gravidanza e nascita", sort_order: 1, language: Language.where(name: "it").first)

Question.create!(name: "Gravidanza a rischio", question_text: "Gravidanza a rischio, procreazione medicalmente  assistita o con problemi di vario genere", valuation_factor: 1, sort_order: 1, question_category: QuestionCategory.first)
Question.create!(name: "Gravidanza non desiderata", question_text: "Gravidanza non desiderata/non programmata", valuation_factor: 1, sort_order: 2, question_category: QuestionCategory.first)
Question.create!(name: "Parto distoccio", question_text: "Parto distoccio o complicato (prematuro, prolungato, TC di urgenza, ventosa, forcipe, ...)", valuation_factor: 1, sort_order: 3, question_category: QuestionCategory.first)
Question.create!(name: "Parto traumatico madre", question_text: "Parto traumatico per la madre", valuation_factor: 1, sort_order: 4, question_category: QuestionCategory.first)
Question.create!(name: "Separazione", question_text: "Separazione del neonato dalla mamma dopo la nascita", valuation_factor: 1, sort_order: 5, question_category: QuestionCategory.first)


QuestionCategory.create!(name: "Fattori di stress personale", info: "Fattori di stress personale", sort_order: 2, language: Language.where(name: "it").first)

Question.create!(name: "Stato di trascuratezza", question_text: "Stato di trascuratezza", valuation_factor: 1, sort_order: 1, question_category: QuestionCategory.where(name: "Fattori di stress personale").first)
Question.create!(name: "alcool o droga", question_text: "Problemi di dipendenza, di alcool o droga, sia della madre sia del padre", valuation_factor: 6, sort_order: 2, question_category: QuestionCategory.where(name: "Fattori di stress personale").first)
Question.create!(name: "Violenza o maltrattamento", question_text: "Esperienze di violenza/ maltrattamento", valuation_factor: 1, sort_order: 3, question_category: QuestionCategory.where(name: "Fattori di stress personale").first)
Question.create!(name: "Problemi di salute", question_text: "Problemi di salute: Fisica o psichica, handicap, episodi di depressione o altro (anoressia, obesità, cecità, sordomutismo, ...)", valuation_factor: 6, sort_order: 4, question_category: QuestionCategory.where(name: "Fattori di stress personale").first)
Question.create!(name: "Formazione scolastica e professionale", question_text: "Formazione scolastica e professionale: nessuna formazione dopo le scuole dell’obbligo, o nemmeno finito l’obbligo", valuation_factor: 1, sort_order: 5, question_category: QuestionCategory.where(name: "Fattori di stress personale").first)
Question.create!(name: "Lutto recente e/o complicato", question_text: "Lutto recente e/o complicato", valuation_factor: 1, sort_order: 6, question_category: QuestionCategory.where(name: "Fattori di stress personale").first)
Question.create!(name: "Genitori anni", question_text: "Età dei genitori < 20 anni alla nascita oppure > 40 alla nascita del primo figlio", valuation_factor: 1, sort_order: 7, question_category: QuestionCategory.where(name: "Fattori di stress personale").first)
Question.create!(name: "Organizzazioni", question_text: "Difficoltà di organizzazione (si dimentica più volte appuntamenti, fatica a mantenere ritmi, ordine, ...)", valuation_factor: 1, sort_order: 8, question_category: QuestionCategory.where(name: "Fattori di stress personale").first)

QuestionCategory.create!(name: "Fattori di stress familiari", info: "Fattori di stress familiari", sort_order: 3, language: Language.where(name: "it").first)

Question.create!(name: "Famiglia monoparentale", question_text: "Famiglia monoparentale", valuation_factor: 1, sort_order: 1, question_category: QuestionCategory.where(name: "Fattori di stress familiari").first)
Question.create!(name: "Forti conflitti nella coppia, separazionez", question_text: "Forti conflitti nella coppia, separazione", valuation_factor: 1, sort_order: 2, question_category: QuestionCategory.where(name: "Fattori di stress familiari").first)
Question.create!(name: "lavoro", question_text: "Assenza del padre, per lavoro, permesso o altro", valuation_factor: 1, sort_order: 3, question_category: QuestionCategory.where(name: "Fattori di stress familiari").first)
Question.create!(name: "Presenza", question_text: "Poca presenza come coppia (solo presenti come genitori)", valuation_factor: 1, sort_order: 4, question_category: QuestionCategory.where(name: "Fattori di stress familiari").first)
Question.create!(name: "Differenza tra fratelli", question_text: "Ridotta differenza d’età tra i fratelli: meno di 18 mesi oppure gemelli", valuation_factor: 1, sort_order: 5, question_category: QuestionCategory.where(name: "Fattori di stress familiari").first)
Question.create!(name: "Fratelli più grandi", question_text: "Presenza di fratelli più grandi che impegnano tanto (carattere molto esigente e difficile da gestire, malattia, autismo, handicap, ...)", valuation_factor: 1, sort_order: 6, question_category: QuestionCategory.where(name: "Fattori di stress familiari").first)
Question.create!(name: "Non presenti", question_text: "Famiglia, nonni, zii lontani, non presenti oppure in conflitto", valuation_factor: 1, sort_order: 7, question_category: QuestionCategory.where(name: "Fattori di stress familiari").first)


QuestionCategory.create!(name: "Fattori di stress sociale", info: "Fattori di stress sociale", sort_order: 4, language: Language.where(name: "it").first)

Question.create!(name: "Poca integrazione sociale", question_text: "Poca integrazione sociale, pochi contatti al di fuorì della famiglia, pochi contatti con famiglie con bambini della stessa età", valuation_factor: 1, sort_order: 1, question_category: QuestionCategory.where(name: "Fattori di stress sociale").first)
Question.create!(name: "extrafamigliare", question_text: "Poco sostegno extrafamigliare: scarso aiuto dei parenti o vicini", valuation_factor: 1, sort_order: 2, question_category: QuestionCategory.where(name: "Fattori di stress sociale").first)
Question.create!(name: "Poco in italiano", question_text: "Si esprime poco in italiano o non si esprime proprio", valuation_factor: 1, sort_order: 3, question_category: QuestionCategory.where(name: "Fattori di stress sociale").first)
Question.create!(name: "Criminalità", question_text: "Contesto sociale difficoltoso: violenza, droga, prostituzione, criminalità", valuation_factor: 6, sort_order: 4, question_category: QuestionCategory.where(name: "Fattori di stress sociale").first)


QuestionCategory.create!(name: "Fattori di stress materiale", info: "Fattori di stress materiale", sort_order: 5, language: Language.where(name: "it").first)

Question.create!(name: "Abitabilità ristretto", question_text: "Condizione di abitabilità molto ristrette: es. quante persone vivono in quante stanze?", valuation_factor: 1, sort_order: 1, question_category: QuestionCategory.where(name: "Fattori di stress materiale").first)
Question.create!(name: "Coabitazione", question_text: "Coabitazione con genitori o suoceri", valuation_factor: 1, sort_order: 2, question_category: QuestionCategory.where(name: "Fattori di stress materiale").first)
Question.create!(name: "Disoccupazione", question_text: "Disoccupazione di uno o entrambi i genitori", valuation_factor: 1, sort_order: 3, question_category: QuestionCategory.where(name: "Fattori di stress materiale").first)
Question.create!(name: "Situazione finanziaria", question_text: "Situazione finanziaria precaria, aiuti sociali", valuation_factor: 1, sort_order: 4, question_category: QuestionCategory.where(name: "Fattori di stress materiale").first)


QuestionCategory.create!(name: "Fattori protettivi", info: "Fattori protettivi", sort_order: 6, language: Language.where(name: "it").first)

Question.create!(name: "Aiuti nel contesto sociale", question_text: "Importanti aiuti nel contesto sociale", valuation_factor: -1, sort_order: 1, question_category: QuestionCategory.where(name: "Fattori protettivi").first)
Question.create!(name: "Persone al di fuorì", question_text: "Persone al di fuori della famiglia molto interessati al bambino", valuation_factor: -1, sort_order: 2, question_category: QuestionCategory.where(name: "Fattori protettivi").first)
Question.create!(name: "Clima familiare positivo", question_text: "Clima familiare molto positivo", valuation_factor: -1, sort_order: 3, question_category: QuestionCategory.where(name: "Fattori protettivi").first)
Question.create!(name: "Assistente", question_text: "Accetta e/o ricerca aiuti (psicologo, assistente sociale, ...), esiste una rete intorno alla famiglia", valuation_factor: -1, sort_order: 4, question_category: QuestionCategory.where(name: "Fattori protettivi").first)


AddressCategory.create!(name: "Consultori", description: "Consultori für Kategorie. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse ullam voluptatibus, corrupti neque nihil? Aspernatur ad cumque culpa deserunt velit provident, facere corporis iste odio delectus molestias, porro cupiditate minus!", sort_order: 1, language: Language.where(name: "it").first)
AddressCategory.create!(name: "Educazione", description: "Educazione für Kategorie. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse ullam voluptatibus, corrupti neque nihil? Aspernatur ad cumque culpa deserunt velit provident, facere corporis iste odio delectus molestias, porro cupiditate minus!", sort_order: 2, language: Language.where(name: "it").first)
AddressCategory.create!(name: "Incontri per bambini", description: "Incontri per bambini. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse ullam voluptatibus, corrupti neque nihil? Aspernatur ad cumque culpa deserunt velit provident, facere corporis iste odio delectus molestias, porro cupiditate minus!", sort_order: 3, language: Language.where(name: "it").first)
AddressCategory.create!(name: "Intorno alla nascita", description: "Intorno alla nascita. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse ullam voluptatibus, corrupti neque nihil? Aspernatur ad cumque culpa deserunt velit provident, facere corporis iste odio delectus molestias, porro cupiditate minus!", sort_order: 4, language: Language.where(name: "it").first)
AddressCategory.create!(name: "Medici", description: "Medici. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse ullam voluptatibus, corrupti neque nihil? Aspernatur ad cumque culpa deserunt velit provident, facere corporis iste odio delectus molestias, porro cupiditate minus!", sort_order: 5, language: Language.where(name: "it").first)

# standard risk
Address.create!(name: "Consultorio genitori e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", address_category: AddressCategory.where(name: "Consultori").first, severity: Severity.where(name: "standard").first)

Address.create!(name: "Progetto Genitori", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.associazioneprogettogenitori.com/", address_category: AddressCategory.where(name: "Educazione").first, severity: Severity.where(name: "standard").first)

Address.create!(name: "Incontri mamma e bambini", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.ticinoperbambini.ch/", address_category: AddressCategory.where(name: "Incontri per bambini").first, severity: Severity.where(name: "standard").first)

Address.create!(name: "Associazione Nascerebene", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.nascerebene.ch/", address_category: AddressCategory.where(name: "Intorno alla nascita").first, severity: Severity.where(name: "standard").first)
Address.create!(name: "Levatrice", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "http://levatrici-ti.ch/", address_category: AddressCategory.where(name: "Intorno alla nascita").first, severity: Severity.where(name: "standard").first)

Address.create!(name: "Ginecologici", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.omct.ch/omct/medici/Membri-OMCT.html", address_category: AddressCategory.where(name: "Medici").first, severity: Severity.where(name: "standard").first)
Address.create!(name: "Pediatri", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.pediatriaticino.ch/", address_category: AddressCategory.where(name: "Medici").first, severity: Severity.where(name: "standard").first)

#medium and high risk
Address.create!(name: "SCUDO - Consultori genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", address_category: AddressCategory.where(name: "Consultori").first, severity: Severity.where(name: "medium").first)
Address.create!(name: "SCUDO - Consultori genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", address_category: AddressCategory.where(name: "Medici").first, severity: Severity.where(name: "medium").first)
Address.create!(name: "SCUDO - Consultori genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", address_category: AddressCategory.where(name: "Intorno alla nascita").first, severity: Severity.where(name: "medium").first)
Address.create!(name: "SCUDO - Consultori genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", address_category: AddressCategory.where(name: "Educazione").first, severity: Severity.where(name: "high").first)
Address.create!(name: "SCUDO - Consultori genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", address_category: AddressCategory.where(name: "Consultori").first, severity: Severity.where(name: "high").first)

