// Bank Account System
// Features: 
// - Deposiy



class BankAccount {
  String owner = '';
  double balance = 0;

  BankAccount({
    required this.owner,
    required this.balance,
  });

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposited: $amount');
      print('Current balance: $balance');
    }
  }

  void transferMoney(BankAccount receiver, double amount) {
    if (amount <= balance) {
    balance -= amount;
    receiver.balance += amount;
    print('Transferred: $amount ${receiver.owner}');
    } else {
    print('Insufficient balance.');
  }
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print('Withdrawed: $amount');
      print('Current balance: $balance');
    }
  }

  void checkBalance() {
    print('Owner: $owner');
    print('Balance: $balance');
  }
}


void main() {
  BankAccount ahmad = BankAccount(
    owner: 'Ahmad',
    balance: 10000,
  );

  BankAccount aisha = BankAccount(
    owner: 'Aisha',
    balance: 5000,
  );

    ahmad.checkBalance();
    ahmad.deposit(3000);
    ahmad.withdraw(5000);
    ahmad.transferMoney(aisha, 1500);
    ahmad.checkBalance();

print('-----------------');

    aisha.checkBalance();
    aisha.withdraw(4500);
    aisha.deposit(2000);
    aisha.checkBalance();

  print('-------------');

}