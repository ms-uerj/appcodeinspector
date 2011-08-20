﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CIDao;
using CIDao.DAO;
using CIDao.Domain;

namespace CIFacade.Facade
{
    public class TaxonomiaFacade
    {
        
        public Taxonomia GetTaxonomia(string nome)
        {
            try
            {
                return new TaxonomiaDao().GetTaxonomia(nome);
            }
            catch (InvalidOperationException)
            {
                throw;
            }
        }

        public List<TaxonomiaEntity> GetTaxonomiasList()
        {
            return new TaxonomiaDao().GetTaxonomiaList();
        }

        public bool DeletarTaxonomia(int taxonomia_id)
        {
            try
            {

                return new TaxonomiaDao().DeletarTaxonomia(taxonomia_id);

            }
            catch (InvalidOperationException)
            {
                return false;
            }
        }

        public bool AdicionarTaxonomia(string nome)
        {
            try
            {
                Taxonomia tax = new Taxonomia();
                tax.T_Nome = nome;;

                return new TaxonomiaDao().AdicionarTaxonomia(tax);

            }
            catch (System.Exception ex)
            {
                throw;
            }
        }

    }
}