Winc BackEnd Development. Opdracht CD 

Local File koppelen met Git naar Github

IK ben begoonen met mijn opdracht door een repositorie te maken op Github met de naam Winc-CD-BackEnd. 
Deze heb ik toen via Git Bash ge-cloned naar mijn local machine. 
Ik heb toen met VS Code een aantal bestanden aangemaakt en een github workflow.
Ik had in eerste instantie een probleem met push naar mijn repositorie.
Ik heb namelijk de workflow op Github gemaakt met Github Actions. 
Omdat het geen lege repositorie was en ik nieuwe bestanden via een push wilde sturen, kreeg ik een foutmelding.
Na wat zoeken op google heb ik via "git pull --rebase origin main" het weer mogelik gemaakt om weer bestanden te versturen.

Het aanmaken en instellen van mijn Workflow met deploy.yml

Ik heb in mijn workflow een deploy.yml bestand aangemaakt.
in dit bestand heb ik de pytest opgenomen.
na het installeren van de nodige programma's met behulp van de requirements.txt bestand, wordt de test uitgevoerd.
Dit ging zonder problemen en was makkelijk te doen.

Koppelen met de DigitalOcean server.

Ik heb op DigitalOcean een droplet aangemaakt met wachtwoord.
Ik heb toen op Github Secrets toegevoegd om een koppeling met de server tot stand te brengen.
Dit had ik nog nooit gedaan en heb het even moeten opzoeken. 
Dit was echter makkelijk te doen. Al moest ik even uitzoeken wat er nu precies allemaal nodig is aan informatie om te kunnen koppelen.
Het IP-adres, gebruikersnaam en wachtwoord is dus genoeg voor de koppeling.
Dit heb ik in de workflow gezet onder drie secrets.

Koppelen met deploy.sh bestand om files naar de server te uploaden.

als er eenmaal is ingelogd op de server, wordt er via een koppeling vanaf de workflow "deploy.yml" gezocht naar het deploy.sh bestand.
Via het deploy.sh bestand worden de files van mijn repositrie geupload naar de server. 
Daarna wordt de server herstart.
Ik heb ook hier even moet zoeken naar de juiste code om de koppeling naar het deploy.sh bestand te maken.
Dit heb dus gedaan met "chmod +x deploy.sh
                             ./deploy.sh "

Dit werkte vervolgens prima.

Flask app gebruiken.

Ik heb een flask app toegevoegd aan mijn repositorie met de naam app.py.
Dit was simpel om te doen omdat ik dit al meermaals heb gedaan in de opleiding.
de geprinte tekst is "Hello world"
Deze is online te zien op "http://104.248.95.135:8000/" in de browser.



