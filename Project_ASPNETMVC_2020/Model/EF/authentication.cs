namespace Project_ASPNETMVC_2020.Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("project_2019.authentication")]
    public partial class authentication
    {
        [Key]
        public int ID_AUTH { get; set; }

        public int? ROLE { get; set; }

        [StringLength(255)]
        public string CONTROLLER { get; set; }

        [StringLength(255)]
        public string ACTION { get; set; }
    }
}
