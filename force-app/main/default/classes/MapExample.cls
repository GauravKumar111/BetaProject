public class MapExample {
    
    public static void map1(){
        Map<string,string> StateCapitalMap = new Map<string,string>{'Jharkhand' => 'Ranchi','West Bengal' => 'kolkata'};
            }
    
    public static void map2(){
        Map<String,String> StateCapitalMap2 = new Map<String,String>();
        StateCapitalMap2.put('Bihar','Patna');
        StateCapitalMap2.put('Karnataka','Bangalore');
    }
    
    public static void map3(){
        Map<String,String>  StateCapitalMap3 = new Map<String,String>();
        List<State_Capital__c> StateCapitalList = new List<State_Capital__c>();
        StateCapitalList =[select id,State__c,Capital__c from State_Capital__c ];
        System.debug('StateCapitalList');
        for (State_Capital__c   eachRecord : StateCapitalList){
        StateCapitalMap3.put(eachRecord.State__c,eachRecord.Capital__c);
        System.debug('StateCapitalMap3'+StateCapitalMap3);
        }
    }
    public static void map4(){
        Map<Id,String>  StateCapitalMap4 = new Map<Id,String>();
        List<Account> StateCapitalList4 = new List<Account>();
        StateCapitalList4 =[select id,Name,Phone from Account ];
        for (Account   eachRecord : StateCapitalList4){
        StateCapitalMap4.put(eachRecord.id,eachRecord.Phone);
            System.debug('StateCapitalMap4'+StateCapitalMap4);
        }
}
}