const messages = [
  {
    "title": "Réunion importante demain",
    "body":
        "N'oubliez pas que nous avons une réunion importante demain à 10h dans la salle de conférence. L'ordre du jour est en pièce jointe.",
    "date": "2023-11-05T15:22:10Z",
  },
  {
    "title": "Nouvelle proposition de projet",
    "body":
        "J'ai joint une nouvelle proposition de projet pour votre examen. Merci de me faire part de vos commentaires avant la fin de la journée. Je suis impatient de commencer ce projet!",
    "date": "2023-11-05T14:30:00Z",
  },
  {
    "title": "Rapport hebdomadaire des ventes",
    "body":
        "Voici le rapport des ventes pour la semaine du 4 novembre. Comme vous pouvez le constater, nous avons battu tous les records! Nos ventes ont augmenté de 15% par rapport à la semaine précédente. C'est un excellent début de trimestre!",
    "date": "2023-11-05T13:00:00Z",
  },
  {
    "title": "Suivi des retours clients",
    "body":
        "Je fais suite aux commentaires des clients que vous m'avez envoyés la semaine dernière. J'ai parlé avec le client et il est satisfait de la résolution. Merci pour votre aide à ce sujet.",
    "date": "2023-11-05T12:00:00Z",
  },
  {
    "title": "Rappel déjeuner d'équipe",
    "body":
        "Juste un rappel que nous avons un déjeuner d'équipe aujourd'hui à 12h30 au nouveau restaurant au coin de la rue. J'espère vous y voir tous!",
    "date": "2023-11-05T11:00:00Z",
  },
  {
    "title": "Annonce de lancement d'un nouveau produit",
    "body":
        "Je suis ravi d'annoncer que nous lançons un nouveau produit la semaine prochaine! Le nouveau produit est un système de gestion intelligente qui va révolutionner notre façon de travailler. Restez à l'écoute pour plus d'informations!",
    "date": "2023-11-05T10:00:00Z",
  },
  {
    "title": "Invitation à un entretien d'embauche",
    "body":
        "J'ai le plaisir de vous inviter à un entretien pour le poste de Développeur Full Stack dans notre entreprise. L'entretien aura lieu le 15 novembre à 14h dans nos bureaux. Merci de me confirmer votre disponibilité.",
    "date": "2023-11-05T09:00:00Z",
  },
  {
    "title": "Lettre d'offre",
    "body":
        "Félicitations! J'ai le plaisir de vous offrir le poste de Chef de Projet dans notre entreprise. Veuillez consulter la lettre d'offre ci-jointe et me faire part de vos questions éventuelles.",
    "date": "2023-11-05T08:00:00Z",
  },
  {
    "title": "Retour sur l'évaluation des performances",
    "body":
        "Je vous écris pour vous donner un retour sur votre évaluation de performance. Dans l'ensemble, vous faites un excellent travail. Cependant, il y a quelques domaines à améliorer. Par exemple, vous pourriez être plus proactif dans la prise en charge de nouveaux projets.",
    "date": "2023-11-05T07:00:00Z",
  },
  {
    "title": "Résultats du sondage auprès des employés",
    "body":
        "Je partage les résultats du récent sondage auprès des employés. Dans l'ensemble, les résultats sont positifs. Cependant, il y a quelques domaines où nous pouvons nous améliorer. Par exemple, les employés aimeraient voir plus d'opportunités de formation et de développement.",
    "date": "2023-11-05T06:00:00Z",
  },
  {
    "title": "Mise à jour du nouveau projet",
    "body":
        "Je vous écris pour vous informer de l'avancement du nouveau projet. Nous sommes en bonne voie pour respecter nos délais et nous sommes enthousiastes des progrès réalisés jusqu'à présent. Je vous tiendrai au courant de notre progression.",
    "date": "2023-11-05T15:22:10Z",
  },
  {
    "title": "Demande de congés",
    "body":
        "Je souhaiterais poser des congés du 20 au 27 décembre inclus. J'ai déjà organisé la passation de mes dossiers avec Marie qui me remplacera pendant cette période. Merci de me confirmer votre accord.",
    "date": "2023-11-06T09:15:00Z",
  },
  {
    "title": "Problème technique urgent",
    "body":
        "Nous rencontrons actuellement un problème technique sur le serveur principal. L'équipe informatique travaille dessus, mais nous estimons un temps de résolution d'environ 2 heures. Je vous tiendrai informé de l'évolution de la situation.",
    "date": "2023-11-06T10:30:00Z",
  },
  {
    "title": "Formation obligatoire sécurité",
    "body":
        "Rappel: tous les employés doivent compléter la formation en ligne sur les nouvelles procédures de sécurité avant le 15 novembre. Cette formation est obligatoire et prend environ 45 minutes. Merci de la planifier dans votre emploi du temps.",
    "date": "2023-11-06T11:45:00Z",
  },
  {
    "title": "Invitation au séminaire annuel",
    "body":
        "J'ai le plaisir de vous inviter à notre séminaire annuel qui se tiendra du 12 au 14 janvier à Marseille. Le programme complet et les informations logistiques sont en pièce jointe. Merci de confirmer votre participation avant le 30 novembre.",
    "date": "2023-11-06T13:20:00Z",
  },
  {
    "title": "Nouvelle politique de télétravail",
    "body":
        "Suite aux récentes discussions, je vous informe de la mise en place d'une nouvelle politique de télétravail permettant jusqu'à 3 jours par semaine à domicile. Les détails complets sont disponibles sur l'intranet. Cette politique entre en vigueur le 1er décembre.",
    "date": "2023-11-06T14:10:00Z",
  },
  {
    "title": "Compte-rendu réunion clients",
    "body":
        "Veuillez trouver ci-joint le compte-rendu de notre réunion avec les représentants de Société XYZ. Les points d'action ont été assignés et nous avons convenu d'un suivi hebdomadaire. Notre prochaine réunion est prévue pour jeudi prochain à 14h.",
    "date": "2023-11-06T15:40:00Z",
  },
  {
    "title": "Maintenance planifiée du système",
    "body":
        "Une maintenance planifiée du système CRM aura lieu ce dimanche entre 23h et 3h du matin. Le système sera inaccessible pendant cette période. Veuillez planifier votre travail en conséquence et vous assurer que toutes les données importantes sont sauvegardées.",
    "date": "2023-11-06T16:30:00Z",
  },
  {
    "title": "Collecte pour départ en retraite",
    "body":
        "Comme vous le savez, Philippe prendra sa retraite fin novembre après 25 ans dans notre entreprise. Nous organisons une collecte pour lui offrir un cadeau. Si vous souhaitez participer, merci de passer à mon bureau avant le 20 novembre.",
    "date": "2023-11-07T09:05:00Z",
  },
  {
    "title": "Nouvelles cartes de visite",
    "body":
        "Suite au changement de notre identité visuelle, nous allons commander de nouvelles cartes de visite. Merci de vérifier et confirmer vos coordonnées via le formulaire en ligne avant vendredi. Les nouvelles cartes seront disponibles dans deux semaines.",
    "date": "2023-11-07T10:15:00Z",
  },
  {
    "title": "Rappel: Évaluation annuelle",
    "body":
        "Votre évaluation annuelle est prévue pour le 22 novembre à 15h dans mon bureau. Merci de préparer votre auto-évaluation en utilisant le formulaire standard et de me l'envoyer au moins 2 jours avant notre rencontre.",
    "date": "2023-11-07T11:30:00Z",
  },
  {
    "title": "Mise à jour budgétaire",
    "body":
        "Je vous prie de trouver ci-joint la mise à jour du budget pour le quatrième trimestre. Nous avons dû réajuster certaines allocations suite aux récents développements. Veuillez noter que les demandes d'investissement supérieures à 5000€ nécessiteront désormais une validation supplémentaire.",
    "date": "2023-11-07T13:45:00Z",
  },
  {
    "title": "Invitation au webinaire",
    "body":
        "Nous organisons un webinaire sur les nouvelles tendances du marché le 25 novembre à 11h. Ce webinaire sera animé par notre directeur stratégique et comprendra une session de questions-réponses. L'inscription est obligatoire via le lien ci-dessous.",
    "date": "2023-11-07T14:50:00Z",
  },
  {
    "title": "Anomalie détectée",
    "body":
        "Notre système d'audit automatique a détecté une anomalie dans les rapports de dépenses du mois dernier. Pourriez-vous vérifier les entrées du 15 au 20 octobre et me confirmer que tout est en ordre? Merci de corriger toute erreur éventuelle.",
    "date": "2023-11-07T16:05:00Z",
  },
  {
    "title": "Changement de fournisseur",
    "body":
        "Suite à notre évaluation annuelle des fournisseurs, nous avons décidé de changer notre fournisseur de matériel informatique. À partir du 1er décembre, toutes les commandes devront être passées auprès de TechPro. Les détails du nouveau processus seront communiqués la semaine prochaine.",
    "date": "2023-11-08T09:20:00Z",
  },
  {
    "title": "Félicitations pour la performance",
    "body":
        "Je tenais à vous féliciter personnellement pour votre excellente performance ce trimestre. Votre travail sur le projet Horizon a été remarquable et a largement contribué à son succès. Continuez comme ça!",
    "date": "2023-11-08T10:35:00Z",
  },
  {
    "title": "Nouvel organigramme",
    "body":
        "Suite aux récentes promotions et recrutements, veuillez trouver ci-joint le nouvel organigramme de l'entreprise. Les changements principaux concernent les départements Marketing et R&D. N'hésitez pas à me contacter si vous avez des questions.",
    "date": "2023-11-08T11:50:00Z",
  },
  {
    "title": "Rappel dépôt notes de frais",
    "body":
        "Rappel: toutes les notes de frais du mois d'octobre doivent être soumises via le système avant le 10 novembre. Les soumissions tardives ne seront traitées qu'avec le cycle du mois suivant.",
    "date": "2023-11-08T13:10:00Z",
  },
  {
    "title": "Proposition commerciale client Dupont",
    "body":
        "Ci-joint la proposition commerciale pour la société Dupont que nous avons discutée hier. J'ai intégré vos suggestions et mis à jour les tarifs. Merci de valider cette version avant que je ne l'envoie au client demain.",
    "date": "2023-11-08T14:25:00Z",
  },
  {
    "title": "Invitation pot de départ",
    "body":
        "Nous organisons un pot de départ pour Sophie ce vendredi à 17h dans la salle de pause. Si vous souhaitez dire quelques mots ou participer à l'organisation, merci de me contacter avant jeudi midi.",
    "date": "2023-11-08T15:40:00Z",
  },
  {
    "title": "Audit qualité surprise",
    "body":
        "Je vous informe qu'un auditeur qualité externe sera présent dans nos locaux demain. Il pourrait passer dans votre service pour vérifier la conformité de nos procédures. Merci de vous assurer que toute la documentation est à jour et facilement accessible.",
    "date": "2023-11-09T09:00:00Z",
  },
  {
    "title": "Mise à jour du manuel employé",
    "body":
        "La version mise à jour du manuel employé est maintenant disponible sur l'intranet. Les principales modifications concernent la politique de télétravail, les congés parentaux et les procédures disciplinaires. Tous les employés sont tenus d'en prendre connaissance.",
    "date": "2023-11-09T10:15:00Z",
  },
  {
    "title": "Enquête satisfaction clients",
    "body":
        "Les résultats de notre dernière enquête de satisfaction clients sont disponibles. Nous avons atteint un score NPS de 42, en hausse de 8 points par rapport à l'année dernière. Merci à tous pour vos efforts qui ont contribué à cette amélioration significative!",
    "date": "2023-11-09T11:30:00Z",
  },
  {
    "title": "Problème de livraison urgent",
    "body":
        "Nous venons d'être informés d'un problème avec la dernière livraison destinée à notre client majeur EuroTech. Pourriez-vous contacter immédiatement le service logistique et m'envoyer un rapport de situation dans l'heure? Ce dossier est prioritaire.",
    "date": "2023-11-09T13:45:00Z",
  },
  {
    "title": "Fermeture exceptionnelle",
    "body":
        "Suite à un incident technique sur le réseau électrique du bâtiment, nos bureaux seront exceptionnellement fermés demain. Tous les employés sont invités à travailler depuis leur domicile. Les réunions prévues seront maintenues par visioconférence.",
    "date": "2023-11-09T15:00:00Z",
  },
  {
    "title": "Nouvelle procédure d'achat",
    "body":
        "À partir du 1er décembre, une nouvelle procédure d'achat sera mise en place. Toutes les demandes devront désormais passer par le portail en ligne et recevoir une double validation. Une formation sur ce nouveau système sera organisée la semaine prochaine.",
    "date": "2023-11-09T16:15:00Z",
  },
  {
    "title": "Accueil nouveau collaborateur",
    "body":
        "Nous accueillerons lundi prochain Thomas Martin qui rejoint notre équipe en tant que Responsable Marketing Digital. Merci de lui réserver un bon accueil et de vous rendre disponibles pour faciliter son intégration.",
    "date": "2023-11-10T09:30:00Z",
  },
  {
    "title": "Réservation salle pour présentation",
    "body":
        "Pourriez-vous me réserver la grande salle de conférence pour le 18 novembre de 14h à 17h? Je dois présenter notre nouvelle stratégie commerciale à l'ensemble de l'équipe de vente et aux partenaires régionaux.",
    "date": "2023-11-10T10:45:00Z",
  },
  {
    "title": "Alerte concurrentielle",
    "body":
        "Notre concurrent principal vient d'annoncer le lancement d'un nouveau produit qui pourrait impacter notre position sur le marché. J'ai joint une analyse préliminaire et propose d'organiser une réunion stratégique lundi pour discuter de notre réponse.",
    "date": "2023-11-10T12:00:00Z",
  },
  {
    "title": "Demande d'informations projet Athena",
    "body":
        "Dans le cadre de l'audit interne du projet Athena, j'aurais besoin des rapports d'avancement des trois derniers mois ainsi que du dernier compte-rendu du comité de pilotage. Pourriez-vous me les transmettre avant mercredi prochain?",
    "date": "2023-11-10T13:15:00Z",
  },
  {
    "title": "Rappel vaccination grippe",
    "body":
        "Dans le cadre de notre campagne de prévention santé, nous vous rappelons que la séance de vaccination contre la grippe aura lieu mardi prochain de 9h à 12h à l'infirmerie. Cette vaccination est gratuite pour tous les employés qui le souhaitent.",
    "date": "2023-11-10T14:30:00Z",
  },
  {
    "title": "Modification planning équipe",
    "body":
        "Suite aux récents ajustements de nos priorités, le planning de l'équipe pour décembre a été modifié. Veuillez consulter la version mise à jour sur le serveur partagé et me signaler tout conflit éventuel avec vos engagements existants.",
    "date": "2023-11-10T15:45:00Z",
  },
  {
    "title": "Demande de révision contrat",
    "body":
        "Pourriez-vous réviser le contrat ci-joint avec notre nouveau fournisseur? J'ai des doutes concernant les clauses de résiliation et les pénalités de retard. Merci de me faire part de vos observations d'ici lundi.",
    "date": "2023-11-11T09:00:00Z",
  },
  {
    "title": "État d'avancement projet Phoenix",
    "body":
        "Veuillez trouver ci-joint l'état d'avancement du projet Phoenix. Nous sommes actuellement en retard d'une semaine sur le planning initial, principalement en raison des problèmes rencontrés avec le module de paiement. Un plan de rattrapage est proposé à la fin du document.",
    "date": "2023-11-11T10:15:00Z",
  },
  {
    "title": "Invitation à la conférence annuelle",
    "body":
        "J'ai le plaisir de vous inviter à notre conférence annuelle qui se tiendra les 5 et 6 décembre au Palais des Congrès. Le thème cette année est 'Innovation et Durabilité'. Votre présentation est programmée pour le 5 décembre à 14h30.",
    "date": "2023-11-11T11:30:00Z",
  },
  {
    "title": "Problème stock produit ref. X4572",
    "body":
        "Notre système d'inventaire indique une discordance significative pour le produit référence X4572. L'écart entre le stock théorique et le stock physique est de 47 unités. Pourriez-vous organiser un comptage manuel urgent et me tenir informé des résultats?",
    "date": "2023-11-11T13:45:00Z",
  },
  {
    "title": "Conflit calendrier réunions",
    "body":
        "Je viens de remarquer que deux réunions importantes ont été programmées simultanément jeudi prochain: le comité produit et la revue financière trimestrielle. Comme je dois participer aux deux, pourriez-vous envisager de déplacer la revue financière à vendredi matin?",
    "date": "2023-11-11T15:00:00Z",
  },
  {
    "title": "Remise rapport financier",
    "body":
        "Le rapport financier du trimestre est maintenant finalisé et disponible pour votre examen. Les résultats sont globalement conformes aux prévisions, avec une légère surperformance dans le segment B2B. Je reste à votre disposition pour toute question.",
    "date": "2023-11-11T16:15:00Z",
  },
  {
    "title": "Changement prestataire nettoyage",
    "body":
        "À partir du 1er décembre, nous changerons de prestataire pour l'entretien de nos locaux. La nouvelle société effectuera ses services en soirée, après 18h. Merci de ne pas laisser d'effets personnels de valeur sur les bureaux après votre départ.",
    "date": "2023-11-12T09:30:00Z",
  },
  {
    "title": "Dysfonctionnement photocopieur",
    "body":
        "Le photocopieur du 3ème étage présente actuellement un dysfonctionnement. Un technicien a été appelé et interviendra demain matin. En attendant, veuillez utiliser le photocopieur du 2ème étage pour vos travaux urgents.",
    "date": "2023-11-12T10:45:00Z",
  },
  {
    "title": "Information travaux bâtiment",
    "body":
        "Des travaux de rénovation de la façade débuteront lundi prochain et dureront environ trois semaines. Des échafaudages seront installés et certaines places de parking seront temporairement indisponibles. Nous vous remercions pour votre compréhension.",
    "date": "2023-11-12T12:00:00Z",
  },
  {
    "title": "Demande de documentation technique",
    "body":
        "Pour finaliser la proposition au client Lemaire, j'aurais besoin des spécifications techniques détaillées de notre nouvelle gamme de produits, ainsi que des études de cas similaires réalisées l'année dernière. Pourriez-vous me transmettre ces éléments?",
    "date": "2023-11-12T13:15:00Z",
  },
  {
    "title": "Rappel: déclaration variable de paie",
    "body":
        "Rappel important: tous les éléments variables de paie (heures supplémentaires, primes exceptionnelles, etc.) doivent être déclarés avant le 20 du mois. Passé ce délai, ils ne pourront être pris en compte que sur la paie du mois suivant.",
    "date": "2023-11-12T14:30:00Z",
  },
  {
    "title": "Annulation déplacement Lyon",
    "body":
        "Suite aux mouvements sociaux annoncés dans les transports, notre déplacement à Lyon prévu jeudi est annulé. La réunion avec le client Bonneval sera organisée en visioconférence aux mêmes horaires. Le lien de connexion vous sera communiqué demain.",
    "date": "2023-11-12T15:45:00Z",
  },
  {
    "title": "Convocation réunion extraordinaire",
    "body":
        "En raison de la situation exceptionnelle concernant le projet Delta, une réunion extraordinaire du comité de direction est convoquée demain à 8h en salle du conseil. Votre présence est indispensable. L'ordre du jour vous sera communiqué ce soir.",
    "date": "2023-11-13T09:00:00Z",
  },
  {
    "title": "Mise à jour logiciel comptabilité",
    "body":
        "Une mise à jour importante de notre logiciel de comptabilité sera déployée ce week-end. Le système sera indisponible de samedi 18h à dimanche 12h. Cette mise à jour intègre les nouvelles fonctionnalités fiscales requises pour 2024.",
    "date": "2023-11-13T10:15:00Z",
  },
  {
    "title": "Demande interview presse",
    "body":
        "Le magazine 'Innovations & Entreprises' souhaite réaliser un article sur notre entreprise et plus particulièrement sur le lancement de notre nouvelle gamme de produits. Ils proposent une interview la semaine prochaine. Seriez-vous disponible et intéressé?",
    "date": "2023-11-13T11:30:00Z",
  },
  {
    "title": "Confirmation venue client",
    "body":
        "Je vous confirme la visite de la délégation du groupe Mercier le 22 novembre. Ils arriveront à 10h et resteront jusqu'à 16h environ. Le programme comprend une présentation de notre entreprise, une visite des installations et un déjeuner de travail.",
    "date": "2023-11-13T13:45:00Z",
  },
  {
    "title": "Changement procédure sécurité",
    "body":
        "Suite à l'audit de sécurité, de nouvelles procédures d'accès au bâtiment seront mises en place à partir de lundi prochain. Tous les employés devront désormais présenter leur badge à l'entrée et à la sortie. Des informations détaillées suivront par email.",
    "date": "2023-11-13T15:00:00Z",
  },
  {
    "title": "Planification inventaire annuel",
    "body":
        "L'inventaire annuel est planifié pour le week-end du 9-10 décembre. Tous les responsables de département sont tenus d'y participer ou de désigner un représentant. Merci de me communiquer les noms des participants avant le 30 novembre.",
    "date": "2023-11-13T16:15:00Z",
  },
  {
    "title": "Nouvelle politique de remboursement",
    "body":
        "Une nouvelle politique de remboursement des frais professionnels entre en vigueur le 1er décembre. Les principales modifications concernent les plafonds de repas et d'hébergement, ainsi que les justificatifs requis. La documentation complète est disponible sur l'intranet.",
    "date": "2023-11-14T09:30:00Z",
  },
  {
    "title": "Problème approvisionnement matières premières",
    "body":
        "Notre fournisseur principal de matières premières nous a informés d'un retard de livraison d'environ deux semaines en raison de difficultés logistiques. J'ai lancé une recherche de solutions alternatives et vous tiendrai informés des développements.",
    "date": "2023-11-14T10:45:00Z",
  },
  {
    "title": "Invitation présentation résultats",
    "body":
        "La présentation des résultats du 3ème trimestre aura lieu le 24 novembre à 15h dans l'auditorium. Tous les managers sont invités à y participer. La session sera suivie d'un moment d'échange informel autour d'un cocktail.",
    "date": "2023-11-14T12:00:00Z",
  },
  {
    "title": "Proposition de formation",
    "body":
        "Suite à notre conversation de la semaine dernière, je vous propose une formation sur la gestion de projets agiles qui correspond à vos besoins. Elle se déroulerait sur 3 jours en janvier. Le programme détaillé est joint à ce message.",
    "date": "2023-11-14T13:15:00Z",
  },
  {
    "title": "Rappel contrôle médical",
    "body":
        "Je vous rappelle que votre visite médicale obligatoire est programmée pour le 21 novembre à 11h à la médecine du travail. En cas d'empêchement, merci de me prévenir au plus tôt pour que je puisse reprogrammer le rendez-vous.",
    "date": "2023-11-14T14:30:00Z",
  },
  {
    "title": "Compte-rendu réunion projet Omega",
    "body":
        "Veuillez trouver ci-joint le compte-rendu de notre réunion d'hier concernant le projet Omega. Les prochaines étapes ont été définies et les responsabilités attribuées. Notre prochaine réunion de suivi est fixée au 28 novembre à 14h.",
    "date": "2023-11-14T15:45:00Z",
  },
  {
    "title": "Alerte météo - Plan de continuité",
    "body":
        "Selon les prévisions météorologiques, des chutes de neige importantes sont attendues demain. En cas de perturbations majeures, le plan de continuité d'activité sera activé. Un message de confirmation sera envoyé demain matin à 6h.",
    "date": "2023-11-15T09:00:00Z",
  },
  {
    "title": "Demande de traduction urgente",
    "body":
        "J'ai besoin de faire traduire en allemand le document commercial ci-joint avant vendredi midi. Il s'agit d'une présentation de 15 pages pour notre client berlinois. Pouvez-vous me confirmer si notre prestataire habituel peut respecter ce délai?",
    "date": "2023-11-15T10:15:00Z",
  },
  {
    "title": "Confirmation participation salon",
    "body":
        "Je confirme notre participation au salon professionnel de Marseille les 15-17 janvier prochain. Nous disposerons d'un stand de 30m². Merci de commencer à préparer les éléments nécessaires (documentation, goodies, visuels, etc.).",
    "date": "2023-11-15T11:30:00Z",
  },
  {
    "title": "Recherche volontaires team building",
    "body":
        "Nous recherchons des volontaires pour organiser notre journée de team building prévue en février. Si vous souhaitez faire partie du comité d'organisation, merci de me contacter avant le 30 novembre. Trois à quatre réunions de préparation seront nécessaires.",
    "date": "2023-11-15T13:45:00Z",
  },
];
