﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;

namespace EntityLayer.DTO
{
    [DataContract]
    public class PharmacyDTO
    {
        [DataMember]
        public int PharmacyID { get; set; }

        [DataMember]
        public string Name { get; set; }

        [DataMember]
        public string Address { get; set; }

        [DataMember]
        public string Description { get; set; }
    }
}
