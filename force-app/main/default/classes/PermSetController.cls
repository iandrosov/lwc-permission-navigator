/*
 * App lwc-permission-navigator controller
 *
 * author: A.I.
 */
public without sharing class PermSetController {

    @AuraEnabled(cacheable=true)
    public static List<PermissionSetAssignment> getPermSetAssignmentList() {
        List<PermissionSetAssignment> psaList = [SELECT Id, AssigneeId, Assignee.FirstName, Assignee.LastName, Assignee.UserName,
                                                PermissionSetId, PermissionSet.Name, PermissionSet.IsCustom, PermissionSet.ProfileId,
                                                PermissionSet.Profile.Name   
                                                    FROM PermissionSetAssignment 
                                                    WHERE Assignee.UserName <> NULL
                                                    ORDER BY Assignee.UserName];
        return psaList;   
    }

    @AuraEnabled(cacheable=true)
    public static List<PermSetCount> getPermSetUserCount(){
        List<PermissionSetAssignment> psaList = [SELECT Id, AssigneeId, PermissionSetId, PermissionSet.Name,
                                                 PermissionSet.IsCustom,PermissionSet.ProfileId  
                                                    FROM PermissionSetAssignment 
                                                    WHERE Assignee.UserName <> NULL
                                                    ORDER BY PermissionSetId];
        Map<String,Integer> psaMap = new Map<String,Integer>();

        for (PermissionSetAssignment psa : psaList){
            if(psaMap.containsKey(psa.PermissionSet.Name)){
                Integer count = (Integer)psaMap.get(psa.PermissionSet.Name);
                count++;
                psaMap.put(psa.PermissionSet.Name,count);
            }else{
                psaMap.put(psa.PermissionSet.Name,1);
            }
        }

        List<PermSetCount> countList = new List<PermSetCount>();
        Set<String> keyList = psaMap.keySet();
        for (String key : keyList){
            PermSetCount psc = new PermSetCount();
            psc.name = key;
            psc.userCount = (Integer)psaMap.get(key);
            countList.add(psc);
        }

        return countList;
    }
    // Pass permission set name to get all assigned users
    @AuraEnabled(cacheable=true)
    public static List<PermissionSetAssignment> findUsers(String permsetKey){
        List<PermissionSetAssignment> psaList = [SELECT Id, AssigneeId, Assignee.FirstName, Assignee.LastName, Assignee.UserName,
                                                PermissionSetId, PermissionSet.Name, PermissionSet.IsCustom, PermissionSet.ProfileId,
                                                PermissionSet.Profile.Name   
                                                    FROM PermissionSetAssignment 
                                                    WHERE Assignee.UserName <> NULL AND PermissionSet.Name =: permsetKey 
                                                    ORDER BY Assignee.UserName];
        return psaList;
    }

    @AuraEnabled(cacheable=true)
    public static List<PermissionSet> getPermSetList(){
        List<PermissionSet> psList = [SELECT Id, Name, ProfileId, Profile.Name FROM PermissionSet];

        return psList;
    }
}
