namespace Project_ASPNETMVC_2020.Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("project_2019.order")]
    public partial class order
    {
        
        [Key]
        [Column(Order = 0)]
        [StringLength(10)]
        public string ID_ORDER { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(10)]
        public string ID_USER { get; set; }

        public decimal? PRICE { get; set; }

        [StringLength(10)]
        public string STATUS { get; set; }

        [StringLength(255)]
        public string HOTEN { get; set; }

        [StringLength(255)]
        public string DIACHI { get; set; }

        [StringLength(255)]
        public string SDT { get; set; }
    }
}
