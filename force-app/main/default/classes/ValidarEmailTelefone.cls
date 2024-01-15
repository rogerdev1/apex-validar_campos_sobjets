public with sharing class ValidarEmailTelefone {

    public static String sanitizarTelefone(String numeroTelefone) {
        String telefoneLimpo = numeroTelefone.replaceAll('[^0-9]', '');

        if(telefoneLimpo..length() == 12){
            return '(' + telefoneLimpo.substring(0, 2) + ')' + ' ' + telefoneLimpo.substring(2, 7) + '-' + telefoneLimpo.substring(7, 11);
        }else{
            return null;
        }
    }
    public static String sanitizarEmail(String email) {
        String regexEmail = '^[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,}(\\.br)?$';

        if (email.matches(regexEmail)) {
            return email.toLowerCase();
        }else{
            return null;
        }
    }
}