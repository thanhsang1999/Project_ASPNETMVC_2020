namespace Project_ASPNETMVC_2020.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("project_2019.ct_group_product")]
    public partial class ct_group_product
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(255)]
        public string ID_GROUP { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(255)]
        public string ID_PRODUCT { get; set; }
    }
}
