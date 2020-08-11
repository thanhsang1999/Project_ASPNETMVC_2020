namespace Project_ASPNETMVC_2020.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("project_2019.mailpassword")]
    public partial class mailpassword
    {
        [Required]
        [StringLength(255)]
        public string key { get; set; }

        [Key]
        [StringLength(255)]
        public string ID_ACCOUNT { get; set; }
    }
}
