//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AdventureWork.Web.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Nomina2
    {
        public int BusinessEntityId { get; set; }
        public string NationalIDNumber { get; set; }
        public string PersonType { get; set; }
        public string Title { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Cargo { get; set; }
        public string Genero { get; set; }
        public short DepartmentID { get; set; }
        public string Departamento { get; set; }
        public byte ShiftID { get; set; }
        public decimal Rate { get; set; }
        public System.DateTime RateChangeDate { get; set; }
        public byte PayFrequency { get; set; }
        public Nullable<decimal> Salary { get; set; }
    }
}
