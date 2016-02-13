using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TheS.eExam.DSDAdminRequest.DSA.EF
{
    [MetadataType(typeof(MD))]
    public partial class AdminRequest
    {
        private class MD
        {
            public int Id { get; set; }
            [Display(Name = "อีเมล์สำหรับติดต่อกลับ")]
            public string ContactEmail { get; set; }
            [Display(Name = "คำนำนหน้าชื่อ")]
            public string TitleName { get; set; }
            [Display(Name = "ชื่อ")]
            public string FirstName { get; set; }
            [Display(Name = "สกุล")]
            public string LastName { get; set; }
            [Display(Name = "รหัสประจำตัวประชาชน")]
            public string PID { get; set; }
            [Display(Name = "อนุมัติ")]
            public bool IsApproved { get; set; }
            [Display(Name = "สาขา")]
            public int BranchId { get; set; }
            [Display(Name = "จังหวัด")]
            public int ProvinceId { get; set; }

            [Display(Name = "สาขา")]
            public virtual Branch Branch { get; set; }
            [Display(Name = "จังหวัด")]
            public virtual Province Province { get; set; }
            [Display(Name = "รายการอีเมล์เครื่องสอบ")]
            [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
            public virtual ICollection<ClientAccount> ClientAccounts { get; set; }
        }
    }
}
