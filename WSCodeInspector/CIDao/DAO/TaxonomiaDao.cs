using System;
using System.Collections.Generic;
using System.Linq;
using CIDao.Domain;
using System.Text;

namespace CIDao.DAO
{
    public class TaxonomiaDao
    {
        private InspectorXDBDataContext db = new InspectorXDBDataContext();

        public TaxonomiaEntity GetTaxonomia(string nome)
        {
            try
            {
                Taxonomia taxonomia = db.Taxonomias.Single(tax => tax.T_Nome == nome);

                TaxonomiaEntity taxE = new TaxonomiaEntity();
                taxE.ID = taxonomia.T_ID;
                taxE.Nome = taxonomia.T_Nome;

                return taxE;
            }
            catch(InvalidOperationException)
            {
                throw;
            }
        }

        public List<TaxonomiaEntity> GetTaxonomiaList()
        {
           
            var taxonomias = from t in db.Taxonomias select t;

            List<TaxonomiaEntity> taxlist = new List<TaxonomiaEntity>();

            foreach (Taxonomia t in taxonomias.ToList())
            {
                TaxonomiaEntity taxentity = new TaxonomiaEntity();
                taxentity.ID = t.T_ID;
                taxentity.Nome = t.T_Nome;
                taxlist.Add(taxentity);
            }

            return taxlist;

        }

        public TaxonomiaEntity GetTaxonomia(int tipoArtefato)
        {

            var taxonomias = from tat in db.TipoArtefato_Taxonomias
                             from t in db.Taxonomias
                             where tat.TA_ID==tipoArtefato
                             && tat.T_ID==t.T_ID
                             select t;

            List<TaxonomiaEntity> taxlist = new List<TaxonomiaEntity>();

            foreach (Taxonomia t in taxonomias.ToList())
            {
                TaxonomiaEntity taxentity = new TaxonomiaEntity();
                taxentity.ID = t.T_ID;
                taxentity.Nome = t.T_Nome;
                taxlist.Add(taxentity);
            }

            return taxlist[0];

        }

        public bool DeletarTaxonomia(int taxInt)
        {
            try
            {
                Taxonomia taxonomia = db.Taxonomias.Single(tax => tax.T_ID == taxInt);
                db.Taxonomias.DeleteOnSubmit(taxonomia);
                db.SubmitChanges();
                return true;
            }
            catch (InvalidOperationException)
            {
                throw;
            }
        }

        public bool AdicionarTaxonomia(Taxonomia tax)
        {
            try
            {

                int taxonomias = (from t in db.Taxonomias
                                    where t.T_Nome.Contains(tax.T_Nome)
                                    select t).Count();

                if (!Convert.ToBoolean(taxonomias))
                {
                    db.Taxonomias.InsertOnSubmit(tax);
                    db.SubmitChanges();
                    return true;
                }
                else
                    return false;   
                
            }
            catch (InvalidOperationException ex)
            {
                return false;
            }
        }

    }
}
