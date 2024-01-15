@isTest
public class FormatarNumerosTest {
@isTest
private static void CelularSemDdiTest(){
        	String a;
        	Test.startTest();
            a = FormatarNumerosTelefones.FormatarNumerosCelular('64 99237-2863') ;
			Test.stopTest();
        	System.assertEquals('5564992372863', a);
}
@isTest
private static void CelularSemDDD(){
			String a;
			Test.startTest();
			a = FormatarNumerosTelefones.FormatarNumerosCelular('55 99532-8795');
			Test.stopTest();
			System.debug(a);
			System.assertEquals('55995328795', a);
}
@isTest
private static void Celularcomcaracteres(){
        	String a;
        	Test.startTest();
            a = FormatarNumerosTelefones.FormatarNumerosCelular('+55 15 99755-4275') ;
			Test.stopTest();
        	System.assertEquals('5515997554275', a);
}
@isTest
private static void Celularpadrao(){
        	String a;
        	Test.startTest();
            a = FormatarNumerosTelefones.FormatarNumerosCelular('5575991835426') ;
			Test.stopTest();
        	System.assertEquals('5575991835426', a);
}    
@isTest
private static void Celularsemnumero(){
        	String a;
    		boolean vazio=false;
        	Test.startTest();
            a = FormatarNumerosTelefones.FormatarNumerosCelular('!@#$%^&*()_-+={}[]|;:\",.<>?`~') ;    		
    		if(string.isBlank(a) || string.isEmpty(a)){
                vazio=true;                
            } 
			Test.stopTest();
			system.assertEquals(true,vazio);			
}  
@isTest
private static void Celularvazio(){
        String a;
    	boolean vazio=false;
        	Test.startTest();
            a = FormatarNumerosTelefones.FormatarNumerosCelular('!@#$%^&*()_-+={}[]|;:\",.<>?`~') ;    		
    		if(string.isBlank(a) || string.isEmpty(a)){
                vazio=false;                
            } 
			Test.stopTest();
			system.assertEquals(false,vazio);
    }

@isTest
private static void TelefoneVazio(){
   			String a;
   			boolean vazio=false;
        	Test.startTest();
            a = FormatarNumerosTelefones.formatarNumerosTelefones('!@#$%^&*()_-+={}[]|;:\",.<>?`~') ;    		
    		if(string.isBlank(a) || string.isEmpty(a)){
                vazio=false;                
            } 
			Test.stopTest();
			system.assertEquals(false,vazio);
    }
 
 @isTest 
    private static void telefoneSemDdiTest(){
        	String a;
        	Test.startTest();
            a = FormatarNumerosTelefones.formatarNumerosTelefones('(51) 3218-6428') ;
			Test.stopTest();
        	System.assertEquals('555132186428', a, 'Formato incorreto');
}
    @isTest
    private static void telefonecomcaracteres(){
        String a;
        Test.startTest();
        a = FormatarNumerosTelefones.formatarNumerosTelefones('+55 (51) 3381-8910');
        Test.stopTest();
        System.assertEquals('555133818910', a);
    }
}