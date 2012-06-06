using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EduNuke
{
    public partial class InstituteGroup
    {
        public string NewTransactionNo()
        {
            return  (LastTransactionNo++).ToString();           

        }

        public string NewEmployeeNo()
        {
            return (LastEmployeeNo++).ToString();

        }
    }
}
