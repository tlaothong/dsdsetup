//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TheS.eExam.DSDAdminRequest.DSA.EF
{
    using System;
    using System.Collections.Generic;
    
    public partial class AdminRequest
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public AdminRequest()
        {
            this.ClientAccounts = new HashSet<ClientAccount>();
        }
    
        public int Id { get; set; }
        public string ContactEmail { get; set; }
        public string TitleName { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string PID { get; set; }
        public bool IsApproved { get; set; }
        public int BranchId { get; set; }
        public int ProvinceId { get; set; }
    
        public virtual Branch Branch { get; set; }
        public virtual Province Province { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ClientAccount> ClientAccounts { get; set; }
    }
}
