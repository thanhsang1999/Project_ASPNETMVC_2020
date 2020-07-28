namespace Project_ASPNETMVC_2020.Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("project_2019.ram")]
    public partial class ram
    {
        [Key]
        [Column("RAM")]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int RAM1 { get; set; }
    }
}
