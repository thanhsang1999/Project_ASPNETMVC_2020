namespace Project_ASPNETMVC_2020.Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("project_2019.ct_account")]
    public partial class ct_account
    {
        [Key]
        [StringLength(255)]
        public string ID_ACCOUNT { get; set; }

        [StringLength(255)]
        public string EMAIL { get; set; }

        [StringLength(255)]
        public string SDT { get; set; }

        [StringLength(255)]
        public string DIA_CHI { get; set; }

        public int? GIOI_TINH { get; set; }

        [Column(TypeName = "datetime2")]
        public DateTime? NGAY_SINH { get; set; }
    }
}
