namespace Project_ASPNETMVC_2020.Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("project_2019.log")]
    public partial class log
    {
        [Key]
        public int IDLOG { get; set; }

        [StringLength(255)]
        public string CONTROLLER { get; set; }

        [StringLength(255)]
        public string ACTION { get; set; }

        [StringLength(255)]
        public string IDACCOUNT { get; set; }

        [StringLength(255)]
        public string IPADDRESS { get; set; }

        [StringLength(255)]
        public string LEVEL { get; set; }

        public DateTime? CREATEAT { get; set; }

        [StringLength(255)]
        public string MESSAGE { get; set; }
    }
}
