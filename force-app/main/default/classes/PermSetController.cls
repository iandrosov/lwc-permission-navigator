/*
 * App lwc-permission-navigator controller
 *
 * author: A.I.
 */
public without sharing class PermSetController {
    public PermSetController() {

    }

    @AuraEnabled(cacheable=true)
    public static List<PermissionSetAssignment> getPermSetAssignmentList() {
        List<PermissionSetAssignment> psaList = [SELECT Id, AssigneeId, Assignee.FirstName, Assignee.LastName, Assignee.UserName,
                                                PermissionSetId, PermissionSet.Name, PermissionSet.IsCustom,PermissionSet.ProfileId  
                                                    FROM PermissionSetAssignment 
                                                    WHERE Assignee.UserName <> NULL
                                                    ORDER BY Assignee.UserName];
        return psaList;   
    }
}
