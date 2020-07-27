namespace Project_ASPNETMVC_2020.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("project_2019.recently_viewed")]
    public partial class recently_viewed
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(255)]
        public string ID_ACCOUNT { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(255)]
        public string ID_PRODUCT { get; set; }

        [Column(TypeName = "datetime2")]
        public DateTime? DATE_VIEW { get; set; }
    }
}
