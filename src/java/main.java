
import com.emsi.classes.Utilisateur;
import com.emsi.dao.utilisateurDao;

/**
 *
 * @author el ouali
 */
public class main {

    public static void main(String[] args) {
        utilisateurDao us = new utilisateurDao();
        Utilisateur u = new Utilisateur("Riad", "Tarik", "a@a.com", "haha", "tee", "0618786727");
        us.create(u);
        Utilisateur u1 = new Utilisateur("Elouali", "Yassine", "a@a.com", "admin", "admin", "0618786727");
        us.create(u1);
    }

}
