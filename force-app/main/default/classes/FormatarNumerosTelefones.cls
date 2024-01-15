public with sharing class FormatarNumerosTelefones {
    public static String formatarNumerosTelefones(String numero) {
        String numeroLimpo = numero.replaceAll('\\D', '');

        if (numeroLimpo.length() == 12 && numeroLimpo.startsWith('55')) {
            String formatoPadrao = '55 ' + '(' + (numeroLimpo.length() >= 4 ? numeroLimpo.substring(2, 4) : '') + ') ' + (numeroLimpo.length() >= 9 ? numeroLimpo.substring(4, 8) : '') + '-' + (numeroLimpo.length() >= 12 ? numeroLimpo.substring(8, 12) : '');
            return formatoPadrao;
        } else {
            return null;
        }
    }
    public static String formatarNumerosCelular(String numero) {
        String numeroLimpo = numero.replaceAll('\\D', '');
        
        if (numeroLimpo.length() == 13 && numeroLimpo.startsWith('55')) {
            String formatoPadrao = '55 ' + '(' + (numeroLimpo.length() >= 4 ? numeroLimpo.substring(2, 4) : '') + ') ' + (numeroLimpo.length() >= 9 ? numeroLimpo.substring(4, 9) : '') + '-' + (numeroLimpo.length() >= 12 ? numeroLimpo.substring(9, 13) : '');
            return formatoPadrao;
        } else {
            return null;
        }
    }
}
