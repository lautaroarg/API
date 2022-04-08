using System;
using System.Collections.Generic;

namespace API.Models
{
    public partial class User
    {
        public int IdUser { get; set; }
        public string EmailUser { get; set; } = null!;
        public string PasswordUser { get; set; } = null!;
        public int TypeOfUser { get; set; }
        public int StatusUser { get; set; }
        
        public virtual TypeUser typeuser { get; set; }
        public virtual StatusUser statusUser { get; set; } 

    }
}
