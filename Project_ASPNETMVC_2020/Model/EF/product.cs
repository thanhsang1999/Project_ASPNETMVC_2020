namespace Project_ASPNETMVC_2020.Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("project_2019.product")]
    public partial class product
    {
        [Key]
        [StringLength(255)]
        public string ID_PRODUCT { get; set; }

        [StringLength(255)]
        public string NAME { get; set; }

        [StringLength(255)]
        public string IMG { get; set; }

        [StringLength(255)]
        public string IMG2 { get; set; }

        [StringLength(255)]
        public string IMG3 { get; set; }

        [StringLength(255)]
        public string ID_BRAND { get; set; }

        public int? MEMORY { get; set; }

        public int? RAM { get; set; }

        public int? PRICE { get; set; }

        [StringLength(255)]
        public string DESCRIPTION { get; set; }

        public int? AMOUNT { get; set; }

        public int? SALE_RATE { get; set; }

        [Column(TypeName = "datetime2")]
        public DateTime? DATE_SUBMITTED { get; set; }

        public int? AMOUNT_SOLD { get; set; }

        [StringLength(255)]
        public string OS { get; set; }
    }
}
