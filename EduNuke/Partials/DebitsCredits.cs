using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EduNuke
{
    public enum DebitsCreditsType { Debit, Credit}
    public partial class DebitsCredits
    {
        public DebitsCredits( Transaction transaction, Account account, double amount, DebitsCreditsType type)
        {
            this.Transaction = transaction;
            this.Account = account;
            this.Amount = amount;
            this.Type = (type == DebitsCreditsType.Credit);
        }

        DebitsCreditsType EntryType { get { return Type ? DebitsCreditsType.Credit : DebitsCreditsType.Debit; } }

    }
}
