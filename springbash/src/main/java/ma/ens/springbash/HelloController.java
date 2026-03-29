package ma.ens.springbash;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/")
    public String sayHello() {
        return "<div style='font-family: Arial, sans-serif; padding: 20px; line-height: 1.6;'>" +
                "<h1 style='color: #2c3e50;'>Succès !</h1>" +
                "<p style='font-size: 1.2em; color: #27ae60;'><strong>L'automatisation Bash fonctionne parfaitement.</strong></p>" +
                "<hr>" +
                "<h2>Présentation</h2>" +
                "<p>Je m'appelle <strong>Khadija Aziz</strong>, étudiante en licence <strong>SIR</strong> (Systèmes Informatiques Répartis).</p>" +
                "<h3>À propos de la licence SIR :</h3>" +
                "<p>La licence SIR est une formation spécialisée qui prépare aux métiers de l'architecture logicielle et de l'administration système. " +
                "Elle se concentre sur la conception de systèmes capables de fonctionner sur plusieurs machines interconnectées (clusters, cloud, microservices). " +
                "Nous y apprenons à gérer la <strong>distribution des données</strong>, la <strong>haute disponibilité</strong> et l'<strong>interopérabilité</strong> des applications.</p>" +
                "<p><i>Ce TP s'inscrit parfaitement dans ce cursus en liant le développement Java et l'administration système Linux.</i></p>" +
                "</div>";
    }
}