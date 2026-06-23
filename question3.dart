// Question 3: Classes & Objects (Difficulty: 3/5) ⭐⭐⭐
/// EXPECTED OUTPUT:
/// Account: 12345, Holder: Alice, Type: Savings, Balance: 800.0
/// Account: 67890, Holder: Bob, Type: Checking, Balance: 400.0
/// Account: 11111, Holder: Charlie, Type: Savings, Balance: 2000.0
/// Insufficient funds for withdrawal of 1000.0 from account 67890
library;


// Create a BankAccount class with the following specifications:
class BankAccount {
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType;

  BankAccount(this.accountNumber, this.accountHolder, this.accountType)
      : balance = 0.0;

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      print(
          "Insufficient funds for withdrawal of $amount from account $accountNumber");
    }
  }

  double getBalance() {
    return balance;
  }

  void displayAccountInfo() {
    print(
        "Account: $accountNumber, Holder: $accountHolder, Type: $accountType, Balance: $balance");
  }
}

void main() {
  // Create accounts
  BankAccount acc1 = BankAccount("12345", "Alice", "Savings");
  BankAccount acc2 = BankAccount("67890", "Bob", "Checking");
  BankAccount acc3 = BankAccount("11111", "Charlie", "Savings");

  // Deposits
  acc1.deposit(1000.0);
  acc2.deposit(500.0);
  acc3.deposit(2000.0);

  // Withdrawals
  acc1.withdraw(200.0);
  acc2.withdraw(100.0);

  // Display accounts
  acc1.displayAccountInfo();
  acc2.displayAccountInfo();
  acc3.displayAccountInfo();

  // Insufficient funds test
  acc2.withdraw(1000.0);
}