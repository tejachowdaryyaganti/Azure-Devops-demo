@isTest
public class AccountHelperTest {
    @isTest static void testCreateAccount() {
        Account acc = AccountHelper.createAccount('Test Account', 'Technology');
        System.assertNotEquals(null, acc.Id, 'Account should be inserted');
    }

    @isTest static void testGetAccountsByIndustry() {
        // Arrange
        AccountHelper.createAccount('Industry Test', 'Healthcare');
        List<Account> results = AccountHelper.getAccountsByIndustry('Healthcare');

        // Assert
        System.assert(results.size() > 0, 'Should return at least one account');
    }
}