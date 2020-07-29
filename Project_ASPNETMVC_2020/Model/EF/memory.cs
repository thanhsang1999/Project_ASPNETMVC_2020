namespace Project_ASPNETMVC_2020.Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("project_2019.memory")]
    public partial class memory
    {
        [Key]
        [Column("MEMORY")]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MEMORY1 { get; set; }
    }
}
