using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EduNuke
{
    public class Context
    {
        public static Context Instance
        {
            get
            {
                return new Context(); // TODO Get from thread
            }

        }

        public InstituteGroup Group { get; private set; }

        public College College { get; private set; }

        public User User { get; private set; }

    }
}
