namespace Project_ASPNETMVC_2020.Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("project_2019.slider")]
    public partial class slider
    {
        [Key]
        [StringLength(255)]
        public string ID_SLIDER { get; set; }

        [StringLength(255)]
        public string NAME { get; set; }

        [StringLength(255)]
        public string IMAGE { get; set; }

        public int? NUMBER { get; set; }

        public int? ACTIVE { get; set; }
    }
}
