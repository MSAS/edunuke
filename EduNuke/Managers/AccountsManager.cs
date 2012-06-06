using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EduNuke
{

    public enum AccountType { Liability, Asset, Equity, Revenue, CostOfSale, Expense, Tax };
    public enum TransactionStatus {Posted , Pending, PartialPost};

    public class AccountsManager
    {
        /// <summary>
        /// Creates Transaction which can be tracked later by a No
        /// </summary>
        /// <param name="rollNo"></param>
        /// <param name="amount"></param>
        /// <param name="remarks"></param>
        /// <param name="dueDate"></param>
        /// <returns>Transaction No</returns>
        public string CreateSemesterFeesSlip(string rollNo, double amount, string remarks, DateTime? dueDate)
        {
            // 
            Account account = GetStudentAccount(rollNo);
            TransactionType transactionType = GetTransactionType("SemesterFees");

            Transaction transaction = CreatePaymentSlip(transactionType, amount, remarks, account.User, dueDate);

            return transaction.TransactionNo;
            

        }

        public string ListOfPendingTransactions(string rollNo)
        {
            return null;
        }

        /// <summary>
        /// Use by Cashier to receive payment
        /// </summary>
        /// <param name="transactionNo"></param>
        /// <param name="amount"></param>
        /// <param name="remarks"></param>
        public void PaySemesterFees(string transactionNo, double amount, string remarks)
        {
            Transaction transaction = GetTransactionByNo(transactionNo);
            MakePayment(amount,transaction.AssociatedUser.Account,  GetRecievableAccount("Students"), transaction, remarks);

        }




        internal void MakePayment(double amount, Account toBeDebited, Account toBeCredited, Transaction transaction, string remarks)
        {
            // Check if the transaction is possible

            // What is total transaction done till now
            double netAmount= amount;
            // add pervious entries
            foreach(DebitsCredits entry in transaction.DebitsCredits )
            {
                netAmount += (entry.Type)? entry.Amount: 0;
            }            
            
            
            // net amount should not be more than amount
            if(netAmount > transaction.Amount)
            {
                throw new RuleViolation(string.Format("Amount {0} exceeds the transaction amount {1} by {2}", amount, transaction.Amount, amount - transaction.Amount));
            }
                

            // TODO start transaction
            DebitsCredits debit = new DebitsCredits(transaction, toBeDebited, amount, DebitsCreditsType.Debit);
            DebitsCredits credit = new DebitsCredits(transaction, toBeCredited, amount, DebitsCreditsType.Credit);

            transaction.Remarks += remarks;
            transaction.Status = (netAmount == transaction.Amount) ? TransactionStatus.Posted.ToString() : TransactionStatus.PartialPost.ToString();             

            // TODO commit transaction



        }

        internal Transaction CreatePaymentSlip(TransactionType transactionType, double amount, string remarks, User user, DateTime? dueDate)
        {
            // Start transaction
            var retVal = new Transaction();
            retVal.TransactionType = transactionType;
            retVal.Amount = amount;
            retVal.CreationDate = DateTime.Now;
            retVal.Remarks = remarks;
            retVal.DueDate = dueDate;
            retVal.Status = TransactionStatus.Pending.ToString();

            retVal.TransactionNo = Context.Instance.Group.NewTransactionNo();

            //TODO save transaction

            return retVal;
        }



        private TransactionType GetTransactionType(string p)
        {
            throw new NotImplementedException();
        }

        private Account GetStudentAccount(string rollNo)
        {
            throw new NotImplementedException();
        }

        private Account GetRecievableAccount(string p)
        {
            throw new NotImplementedException();
        }

        private Transaction GetTransactionByNo(string transactionNo)
        {
            throw new NotImplementedException();
        }


    }
}
