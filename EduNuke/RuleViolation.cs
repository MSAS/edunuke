using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EduNuke
{
    public class RuleViolation: Exception
    {
        public RuleViolation(string reason): base(reason)
        {

        }
    }
}
