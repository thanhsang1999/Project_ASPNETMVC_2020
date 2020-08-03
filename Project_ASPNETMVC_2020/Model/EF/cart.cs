namespace Project_ASPNETMVC_2020.Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("project_2019.cart")]
    public partial class cart
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(255)]
        public string ID_ACCOUNT { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(255)]
        public string ID_PRODUCT { get; set; }

        public decimal? AMOUNT { get; set; }

        public short? CHECKBOX { get; set; }
    }
}
