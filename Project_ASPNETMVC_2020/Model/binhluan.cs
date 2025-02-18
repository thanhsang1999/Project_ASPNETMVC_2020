namespace Project_ASPNETMVC_2020.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("project_2019.binhluan")]
    public partial class binhluan
    {
        [Key]
        [StringLength(255)]
        public string ID_BINHLUAN { get; set; }

        [StringLength(255)]
        public string ID_SANPHAM { get; set; }

        [StringLength(255)]
        public string TEN { get; set; }

        [StringLength(255)]
        public string NOIDUNG { get; set; }
    }
}
