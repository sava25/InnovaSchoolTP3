﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using InnovaSchool.Entity;
using InnovaSchool.DAL;

namespace InnovaSchool.BL
{
    public class BFeriado
    {
        DFeriado DFeriado = new DFeriado();

        public EFeriado VerificarFeriado(EActividad EActividad)
        {
            return DFeriado.VerificarFeriado(EActividad);
        }
    }
}
