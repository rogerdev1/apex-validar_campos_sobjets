trigger ValidarTelefoneAccounts on Account (before insert, before update) {
    private static List<String> dddsBR = new List<String>{
        '11','12','13','14','15','16','17','18','19','21','22', '24','27','28',
        '31','32','33', '34','35','37','38','41','42','43','44','45','46','47',
        '48','49','51','53','54','55','61','62','63','64','65','66','67','68',
        '69','71','73','74','75','77','79','81','82','83','84','85','86','87',
        '88','89','91','92','93','94','95','96','97','98','99'
    };
    private static Boolean contemDDDValido(String texto, List<String> lista) {
        if (texto != null && texto.length() >= 3) {
            String posicaoDDD = texto.substring(1, 3);
            for (String item : lista) {
                if (posicaoDDD.equals(item)) {
                    return true;
                }
            }
        }
        return false;
    }
    for (Account acc : Trigger.new) {
        if (!String.isBlank(acc.Phone)) {
            String numeroFormatado = FormatarNumerosTelefones.formatarNumerosTelefones(acc.Phone);
            Boolean contemDDD = contemDDDValido(numeroFormatado, dddsBR);

            if (numeroFormatado != null) {
                if (contemDDD) {
                    acc.Phone = numeroFormatado;
                }else{
                    acc.addError('DDD inválido.');
                }
            } else {
                acc.addError('Número de telefone inválido. Exemplo: "55 (51) 1234-5678"');
            }
        } else if(acc.Phone.length() > 12){
            acc.addError('Verifique a quantidade de digitos do número"');
        } else {
            acc.addError('Campo de telefone não pode estar vazio.');
        }
    }
}