namespace Project_ASPNETMVC_2020.Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("project_2019.os")]
    public partial class o
    {
        [Key]
        [StringLength(255)]
        public string OS { get; set; }

        public decimal? NUMBER { get; set; }
    }
}
