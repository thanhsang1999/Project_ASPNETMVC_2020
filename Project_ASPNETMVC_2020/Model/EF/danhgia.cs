namespace Project_ASPNETMVC_2020.Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("project_2019.danhgia")]
    public partial class danhgia
    {
        [Key]
        [StringLength(255)]
        public string ID_DANHGIA { get; set; }

        [StringLength(255)]
        public string ID_SANPHAM { get; set; }

        [StringLength(255)]
        public string ID_USER { get; set; }

        [StringLength(255)]
        public string SAO { get; set; }

        [StringLength(255)]
        public string TIEUDE { get; set; }

        [StringLength(255)]
        public string NOIDUNG { get; set; }

        [StringLength(255)]
        public string TEN_USER { get; set; }
    }
}
