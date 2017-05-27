namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Order")]
    public partial class Order
    {
        public long ID { get; set; }

        public DateTime? CreateDate { get; set; }

        public long? CustomerID { get; set; }

        [Required(ErrorMessage ="Vui lòng nhập thông tin người nhận")]
        [StringLength(50)]
        public string ShipName { get; set; }


        [Required(ErrorMessage = "Vui lòng nhập số điện thoại người nhận")]
        [StringLength(50)]
        public string ShipMobile { get; set; }


        [Required(ErrorMessage = "Vui lòng nhập địa chỉ người nhận")]
        [StringLength(50)]
        public string ShipAddress { get; set; }

        [StringLength(50)]
        public string ShipEmail { get; set; }

        public int? Status { get; set; }
    }
}
