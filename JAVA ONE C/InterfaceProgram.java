interface Account {
    void deposit(double amount);
    void withdraw(double amount);
    double getBalance();
}

class SavingsAccount implements Account {
    private double balance;
    private double interestRate;

    public SavingsAccount(double initialBalance, double interestRate) {
        this.balance = initialBalance;
        this.interestRate = interestRate;
    }

    public void deposit(double amount) {
        balance += amount;
    }

    public void withdraw(double amount) {
        if (amount <= balance) {
            balance -= amount;
        } else {
            System.out.println("Insufficient balance");
        }
    }

    public double getBalance() {
        return balance;
    }

    public void calculateInterest() {
        double interest = balance * (interestRate / 100);
        balance += interest;
    }
}

class CurrentAccount implements Account {
    private double balance;
    private double overdraftLimit;

    public CurrentAccount(double initialBalance, double overdraftLimit) {
        this.balance = initialBalance;
        this.overdraftLimit = overdraftLimit;
    }

    public void deposit(double amount) {
        balance += amount;
    }

    public void withdraw(double amount) {
        if (balance - amount >= -overdraftLimit) {
            balance -= amount;
        } else {
            System.out.println("Exceeded overdraft limit");
        }
    }

    public double getBalance() {
        return balance;
    }
}

class Bank {
    private Account[] accounts;
    private int numAccounts;

    public Bank(int capacity) {
        accounts = new Account[capacity];
        numAccounts = 0;
    }

    public void addAccount(Account account) {
        if (numAccounts < accounts.length) {
            accounts[numAccounts] = account;
            numAccounts++;
        } else {
            System.out.println("Bank is full. Cannot add more accounts.");
        }
    }

    public void removeAccount(Account account) {
        for (int i = 0; i < numAccounts; i++) {
            if (accounts[i] == account) {
                for (int j = i; j < numAccounts - 1; j++) {
                    accounts[j] = accounts[j + 1];
                }
                numAccounts--;
                return;
            }
        }
        System.out.println("Account not found.");
    }

    public void deposit(Account account, double amount) {
        account.deposit(amount);
    }
}

public class InterfaceProgram {
    public static void main(String[] args) {
        Bank bank = new Bank(10);  
        SavingsAccount savingsAccount = new SavingsAccount(1000.0, 5.0);
        CurrentAccount currentAccount = new CurrentAccount(2000.0, 1000.0);

        bank.addAccount(savingsAccount);
        bank.addAccount(currentAccount);

        bank.deposit(savingsAccount, 500.0);
        bank.deposit(currentAccount, 300.0);

        savingsAccount.calculateInterest();
        currentAccount.withdraw(250.0);

        System.out.println("Savings Account Balance: " + savingsAccount.getBalance());
        System.out.println("Current Account Balance: " + currentAccount.getBalance());
    }
}