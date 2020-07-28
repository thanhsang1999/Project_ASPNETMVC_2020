namespace Project_ASPNETMVC_2020.Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("project_2019.bill")]
    public partial class bill
    {
        [Key]
        [StringLength(10)]
        public string ID_BILL { get; set; }

        [StringLength(255)]
        public string ID_USER { get; set; }

        [StringLength(10)]
        public string ID_PRODUCT { get; set; }

        public decimal? AMOUNT { get; set; }

        public decimal? PRICE { get; set; }
    }
}
