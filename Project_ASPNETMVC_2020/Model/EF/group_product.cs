namespace Project_ASPNETMVC_2020.Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("project_2019.group_product")]
    public partial class group_product
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(255)]
        public string ID_GROUP { get; set; }

        [StringLength(255)]
        public string NAME { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int SALE_RATE { get; set; }

        public int? ACTIVE { get; set; }
    }
}
