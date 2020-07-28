namespace Project_ASPNETMVC_2020.Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("project_2019.brand")]
    public partial class brand
    {
        [Key]
        [StringLength(255)]
        public string ID_BRAND { get; set; }

        [Column("BRAND")]
        [StringLength(255)]
        public string BRAND1 { get; set; }
    }
}
