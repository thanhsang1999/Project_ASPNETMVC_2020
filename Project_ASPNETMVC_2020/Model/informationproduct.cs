namespace Project_ASPNETMVC_2020.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("project_2019.informationproduct")]
    public partial class informationproduct
    {
        [Key]
        [StringLength(255)]
        public string ID_PRODUCT { get; set; }

        [StringLength(255)]
        public string MANHINH { get; set; }
    }
}
