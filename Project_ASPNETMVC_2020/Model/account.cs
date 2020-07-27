namespace Project_ASPNETMVC_2020.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("project_2019.account")]
    public partial class account
    {
        [Key]
        [StringLength(255)]
        public string ID_ACCOUNT { get; set; }

        [StringLength(255)]
        public string USERNAME { get; set; }

        [StringLength(255)]
        public string PASSWORD { get; set; }

        [StringLength(255)]
        public string HO_TEN { get; set; }

        [StringLength(255)]
        public string LEVEL { get; set; }

        [StringLength(255)]
        public string ACTIVE { get; set; }
    }
}
