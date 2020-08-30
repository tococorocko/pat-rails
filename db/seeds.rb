# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Question.destroy_all
QuestionCategory.destroy_all
Address.destroy_all
AddressCategory.destroy_all
Language.destroy_all
Severity.destroy_all

Language.create(name: "de")
Language.create(name: "it")
Language.create(name: "fr")

Severity.create(name: "standard", value: 1, description: "There is a low to medium Risk, please decide yourself")
Severity.create(name: "medium", value: 2, description: "Medium risk detected")
Severity.create(name: "high", value: 3, description: "High risk detected")

QuestionCategory.create(name: "Gravidanza e nascita", info: "Sind Probleme bei der Geburt aufgetreten?", sort_order: 1, language: Language.where(name: "it").first)

Question.create(name: "Gravidanza a rischio", question_text: "Gravidanza a rischio, assistita o con problemi", valuation_factor: 1, sort_order: 1, question_category: QuestionCategory.first)
Question.create(name: "Gravidanza non desiderata", question_text: "Gravidanza non desiderata/ non programmata", valuation_factor: 1, sort_order: 2, question_category: QuestionCategory.first)
Question.create(name: "Parto con problemi", question_text: "Parto con problemi ( prematuro, prolungato, TC di urgenza, ventosa , forcipe,.. )", valuation_factor: 1, sort_order: 3, question_category: QuestionCategory.first)
Question.create(name: "Separazione neonato", question_text: "Separazione neonato dalla mamma dopo la nascita", valuation_factor: 1, sort_order: 4, question_category: QuestionCategory.first)


QuestionCategory.create(name: "Fattori di stress personale", info: "Fattori di stress personale", sort_order: 2, language: Language.where(name: "it").first)

Question.create(name: "Stato di trascuratezza", question_text: "Stato di trascuratezza", valuation_factor: 1, sort_order: 1, question_category: QuestionCategory.where(name: "Fattori di stress personale").first)
Question.create(name: "Esperienze di violenza/maltrattamento", question_text: "Esperienze di violenza/ maltrattamento", valuation_factor: 1, sort_order: 2, question_category: QuestionCategory.where(name: "Fattori di stress personale").first)
Question.create(name: "Problemi di salute", question_text: "Problemi di salute: fisica o psichica, handicap, episodi di depressione o altro ( cecità , sordomuto, .. )", valuation_factor: 1, sort_order: 3, question_category: QuestionCategory.where(name: "Fattori di stress personale").first)
Question.create(name: "Lutto recente", question_text: "Lutto recente e/o complicato", valuation_factor: 1, sort_order: 4, question_category: QuestionCategory.where(name: "Fattori di stress personale").first)
Question.create(name: "Genitori < 20 anni", question_text: "Genitori < 20 anni alla nascita oppure > 40 alla nascita del primo figlio", valuation_factor: 1, sort_order: 5, question_category: QuestionCategory.where(name: "Fattori di stress personale").first)

QuestionCategory.create(name: "Fattori di stress famigliari", info: "Fattori di stress famigliari", sort_order: 3, language: Language.where(name: "it").first)

Question.create(name: "Famiglia monoparentale", question_text: "Famiglia monoparentale", valuation_factor: 1, sort_order: 1, question_category: QuestionCategory.where(name: "Fattori di stress famigliari").first)
Question.create(name: "Forti conflitti nella coppia , separazionez", question_text: "Forti conflitti nella coppia , separazione", valuation_factor: 1, sort_order: 2, question_category: QuestionCategory.where(name: "Fattori di stress famigliari").first)
Question.create(name: "lavoro", question_text: "Assenza del padre, per lavoro, permesso o altro, / poca presenza come coppia (solo presenti come genitori)", valuation_factor: 1, sort_order: 3, question_category: QuestionCategory.where(name: "Fattori di stress famigliari").first)
Question.create(name: "Differenza tra fratelli", question_text: "Differenza tra fratelli meno di 18 mesi oppure gemelli", valuation_factor: 1, sort_order: 4, question_category: QuestionCategory.where(name: "Fattori di stress famigliari").first)
Question.create(name: "Fratelli più grandi", question_text: "Fratelli più grandi che impegnano tanto ( carattere molto esigente e difficile da gestire, malattia, autismo, handicap,..)", valuation_factor: 1, sort_order: 5, question_category: QuestionCategory.where(name: "Fattori di stress famigliari").first)
Question.create(name: "Difficoltà di organizzarsi", question_text: "Difficoltà di organizzarsi ( si dimentica più volte appuntamenti, fatica a mantenere ritmi, ordine,.. )", valuation_factor: 1, sort_order: 6, question_category: QuestionCategory.where(name: "Fattori di stress famigliari").first)
Question.create(name: "non presenti", question_text: "Famiglia, nonni, zii lontani, non presenti oppure in conflitto", valuation_factor: 1, sort_order: 7, question_category: QuestionCategory.where(name: "Fattori di stress famigliari").first)


QuestionCategory.create(name: "Fattori di stress sociale", info: "Fattori di stress sociale", sort_order: 4, language: Language.where(name: "it").first)

Question.create(name: "Poca integrazione sociale", question_text: "Poca integrazione sociale, pochi contatti al di fuorì della famiglia, pochi contatti con famiglie con bambini della stessa età", valuation_factor: 1, sort_order: 1, question_category: QuestionCategory.where(name: "Fattori di stress sociale").first)
Question.create(name: "Poco sostegno da fuori", question_text: "Poco sostegno da fuorì, aiuto dei parenti o vicini", valuation_factor: 1, sort_order: 2, question_category: QuestionCategory.where(name: "Fattori di stress sociale").first)
Question.create(name: "Poco in italiano", question_text: "Si esprime poco in italiano o non si esprime propri", valuation_factor: 1, sort_order: 3, question_category: QuestionCategory.where(name: "Fattori di stress sociale").first)
Question.create(name: "Ambiente dissociale", question_text: "Ambiente dissociale , violenza, droga, prostituzione, criminalità", valuation_factor: 1, sort_order: 4, question_category: QuestionCategory.where(name: "Fattori di stress sociale").first)


QuestionCategory.create(name: "Fattori di stress materiale", info: "Fattori di stress materiale", sort_order: 5, language: Language.where(name: "it").first)

Question.create(name: "Condizione di abitabilità molto ristretto", question_text: "Condizione di abitabilità molto ristretto, quante persone vivono in quante stanze?", valuation_factor: 1, sort_order: 1, question_category: QuestionCategory.where(name: "Fattori di stress materiale").first)
Question.create(name: "Coabitazione", question_text: "Coabitazione con genitori o suoceri", valuation_factor: 1, sort_order: 2, question_category: QuestionCategory.where(name: "Fattori di stress materiale").first)
Question.create(name: "Formazione scolastica e professionale", question_text: "Formazione scolastica e professionale: nessuna formazione dopo obbligo, o nemmeno finito l’obbligo", valuation_factor: 1, sort_order: 3, question_category: QuestionCategory.where(name: "Fattori di stress materiale").first)
Question.create(name: "Disoccupazione di uno o entrambi i genitori", question_text: "Disoccupazione di uno o entrambi i genitori", valuation_factor: 1, sort_order: 4, question_category: QuestionCategory.where(name: "Fattori di stress materiale").first)
Question.create(name: "Situazione finanziaria precaria , aiuti sociali", question_text: "Situazione finanziaria precaria , aiuti sociali", valuation_factor: 1, sort_order: 5, question_category: QuestionCategory.where(name: "Fattori di stress materiale").first)


QuestionCategory.create(name: "Fattori protettivi", info: "Fattori protettivi", sort_order: 6, language: Language.where(name: "it").first)

Question.create(name: "Importanti aiuti nel contesto sociale", question_text: "Importanti aiuti nel contesto sociale", valuation_factor: -1, sort_order: 1, question_category: QuestionCategory.where(name: "Fattori protettivi").first)
Question.create(name: "Persone al di fuorì della famiglia molto interessati al bambino", question_text: "Persone al di fuorì della famiglia molto interessati al bambino", valuation_factor: -1, sort_order: 2, question_category: QuestionCategory.where(name: "Fattori protettivi").first)
Question.create(name: "Clima familiare molto positivo", question_text: "Clima familiare molto positivo", valuation_factor: -1, sort_order: 2, question_category: QuestionCategory.where(name: "Fattori protettivi").first)


AddressCategory.create(name: "Consultorio", description: "Beschreibung für Kategorie. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse ullam voluptatibus, corrupti neque nihil? Aspernatur ad cumque culpa deserunt velit provident, facere corporis iste odio delectus molestias, porro cupiditate minus!", sort_order: 1, language: Language.where(name: "it").first)
AddressCategory.create(name: "Inconsultorio di gruppo", description: "Beschreibung für Kategorie. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse ullam voluptatibus, corrupti neque nihil? Aspernatur ad cumque culpa deserunt velit provident, facere corporis iste odio delectus molestias, porro cupiditate minus!", sort_order: 2, language: Language.where(name: "it").first)
AddressCategory.create(name: "Levatrici", description: "Beschreibung für Kategorie. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse ullam voluptatibus, corrupti neque nihil? Aspernatur ad cumque culpa deserunt velit provident, facere corporis iste odio delectus molestias, porro cupiditate minus!", sort_order: 3, language: Language.where(name: "it").first)
AddressCategory.create(name: "Pediatri", description: "Beschreibung für Kategorie. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse ullam voluptatibus, corrupti neque nihil? Aspernatur ad cumque culpa deserunt velit provident, facere corporis iste odio delectus molestias, porro cupiditate minus!", sort_order: 4, language: Language.where(name: "it").first)
AddressCategory.create(name: "Progetti", description: "Beschreibung für Kategorie. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse ullam voluptatibus, corrupti neque nihil? Aspernatur ad cumque culpa deserunt velit provident, facere corporis iste odio delectus molestias, porro cupiditate minus!", sort_order: 5, language: Language.where(name: "it").first)


Address.create(name: "SCUDO - Consultorio genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", address_category: AddressCategory.where(name: "Consultorio").first)
Address.create(name: "ABCD - Consultorio genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", address_category: AddressCategory.where(name: "Consultorio").first)
Address.create(name: "SCUDO - Consultorio genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", address_category: AddressCategory.where(name: "Consultorio").first)
Address.create(name: "SCUDO - Consultorio genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", address_category: AddressCategory.where(name: "Consultorio").first)
Address.create(name: "SCUDO - Consultorio genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", address_category: AddressCategory.where(name: "Consultorio").first)


Address.create(name: "SCUDO - Consultorio genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", address_category: AddressCategory.where(name: "Inconsultorio di gruppo").first)
Address.create(name: "SCUDO - Consultorio genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", address_category: AddressCategory.where(name: "Levatrici").first)
Address.create(name: "SCUDO - Consultorio genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", address_category: AddressCategory.where(name: "Pediatri").first)
Address.create(name: "SCUDO - Consultorio genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", address_category: AddressCategory.where(name: "Progetti").first)


Address.create(name: "SCUDO - Consultorio genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", severity: Severity.where(name: "medium").first)
Address.create(name: "SCUDO - Consultorio genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", severity: Severity.where(name: "medium").first)
Address.create(name: "SCUDO - Consultorio genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", severity: Severity.where(name: "medium").first)
Address.create(name: "SCUDO - Consultorio genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", severity: Severity.where(name: "high").first)
Address.create(name: "SCUDO - Consultorio genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", severity: Severity.where(name: "high").first)

