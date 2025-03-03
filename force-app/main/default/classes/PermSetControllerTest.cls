@isTest
private class PermSetControllerTest {

    @isTest static void testPermSetAssignmentList(){

        Test.startTest();
        List<PermissionSetAssignment> lst = PermSetController.getPermSetAssignmentList(); 
        Test.StopTest();

        System.assertNotEquals(0,lst.size());
    }

    @isTest static void testPermSetUserCount(){
        Test.startTest();
        List<PermSetCount> lst = PermSetController.getPermSetUserCount();
        Test.StopTest();

        System.assertNotEquals(0,lst.size());
    }

    @isTest static void testfindUsers(){
        Test.startTest();
        // Look at custom perm set
        List<PermissionSetAssignment> lst = PermSetController.findUsers('LWC_Permission_Navi');
        Test.StopTest();
        System.assertEquals(0,lst.size());
    }

    @isTest static void testPermSetList(){
        Test.startTest();
        List<PermissionSet> lst = PermSetController.getPermSetList();
        Test.StopTest();
        System.assertNotEquals(0,lst.size());
        for (PermissionSet ps : lst){
            if(ps.Name == 'LWC_Permission_Navi'){
                // Found custom perm set
                System.assertEquals('LWC_Permission_Navi', ps.Name);
            }
        }       
    }
}
