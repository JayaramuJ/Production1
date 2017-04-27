public class MyController {

    public Account account;

    public void MyController() {
        account = [SELECT Id, Name, Type FROM Account WHERE Id =: ApexPages.currentPage().getParameters().get('id')];
    }

    public Account getAccount() {
        return account;
    }

    public PageReference save() {
        update account;
        return null;
    }
}