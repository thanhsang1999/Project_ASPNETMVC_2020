namespace Project_ASPNETMVC_2020.Model.EF
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class DBModel : DbContext
    {
        public DBModel()
            : base("name=DBModel")
        {
        }

        public virtual DbSet<account> accounts { get; set; }
        public virtual DbSet<bill> bills { get; set; }
        public virtual DbSet<binhluan> binhluans { get; set; }
        public virtual DbSet<brand> brands { get; set; }
        public virtual DbSet<cart> carts { get; set; }
        public virtual DbSet<ct_account> ct_account { get; set; }
        public virtual DbSet<ct_group_product> ct_group_product { get; set; }
        public virtual DbSet<danhgia> danhgias { get; set; }
        public virtual DbSet<detail_order> detail_order { get; set; }
        public virtual DbSet<group_product> group_product { get; set; }
        public virtual DbSet<informationproduct> informationproducts { get; set; }
        public virtual DbSet<mailpassword> mailpasswords { get; set; }
        public virtual DbSet<order> orders { get; set; }
        public virtual DbSet<product> products { get; set; }
        public virtual DbSet<ram> rams { get; set; }
        public virtual DbSet<recently_viewed> recently_viewed { get; set; }
        public virtual DbSet<yeuthich> yeuthiches { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<bill>()
                .Property(e => e.AMOUNT)
                .HasPrecision(5, 0);

            modelBuilder.Entity<bill>()
                .Property(e => e.PRICE)
                .HasPrecision(10, 2);

            modelBuilder.Entity<cart>()
                .Property(e => e.AMOUNT)
                .HasPrecision(10, 0);

            modelBuilder.Entity<ct_account>()
                .Property(e => e.NGAY_SINH)
                .HasPrecision(0);

            modelBuilder.Entity<detail_order>()
                .Property(e => e.AMOUNT)
                .HasPrecision(3, 0);

            modelBuilder.Entity<order>()
                .Property(e => e.PRICE)
                .HasPrecision(10, 0);

            modelBuilder.Entity<product>()
                .Property(e => e.DATE_SUBMITTED)
                .HasPrecision(0);

            modelBuilder.Entity<recently_viewed>()
                .Property(e => e.DATE_VIEW)
                .HasPrecision(0);
        }
    }
}
