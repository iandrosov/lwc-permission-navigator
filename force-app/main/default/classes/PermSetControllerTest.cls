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
        
        Test.StopTest();

    }

    @isTest static void testPermSetList(){
        Test.startTest();
        
        Test.StopTest();

    }
}
