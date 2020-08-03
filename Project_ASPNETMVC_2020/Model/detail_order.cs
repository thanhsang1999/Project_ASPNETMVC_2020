namespace Project_ASPNETMVC_2020.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("project_2019.detail_order")]
    public partial class detail_order
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(10)]
        public string ID_ORDER { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(10)]
        public string ID_PRODUCT { get; set; }

        public decimal? AMOUNT { get; set; }
    }
}
