using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CIDao.Domain;

namespace CIDao.DAO
{
    public class TipoArtefatoDao
    {
        private InspectorXDBDataContext db = new InspectorXDBDataContext();

        public TipoArtefatoEntity GetTipoArtefato(string nome)
        {
            try
            {
                TipoArtefato tipoArtefato= db.TipoArtefatos.Single(ta => ta.TA_NOME== nome);

                TipoArtefatoEntity tipoAE= new TipoArtefatoEntity();
                tipoAE.TA_ID = tipoArtefato.TA_ID;
                tipoAE.TA_NOME= tipoArtefato.TA_NOME;
                tipoAE.TA_DESCRICAO = tipoArtefato.TA_DESCRICAO;

                return tipoAE;
            }
            catch (InvalidOperationException)
            {
                throw;
            }
        }

        public TipoArtefatoEntity getTipoArtefato(int taxId)
        {
            try
            {

                TipoArtefato_Taxonomia tipoArtefatotax = db.TipoArtefato_Taxonomias.Single(tat => tat.T_ID == taxId);
                TipoArtefato tipoArtefato = db.TipoArtefatos.Single(ta => ta.TA_ID == tipoArtefatotax.TA_ID);

                
                TipoArtefatoEntity taentity = new TipoArtefatoEntity();
                taentity.TA_ID = tipoArtefato.TA_ID;
                taentity.TA_NOME = tipoArtefato.TA_NOME;

                return taentity;
            }
            catch (InvalidOperationException)
            {
                throw;
            }
        }

        public bool SetRelacaoTaxonomia(int taxId,int tipoArtId)
        {
            bool sucess = false;
            try
            {

                //TipoArtefato_Taxonomia tipoArtefatotax = db.TipoArtefato_Taxonomias.Single(tat => tat.T_ID == taxId&&
                                                                                                //  tat.TA_ID==tipoArtId);

                TipoArtefato_Taxonomia tipoArtTax = new TipoArtefato_Taxonomia();
                tipoArtTax.T_ID = taxId;
                tipoArtTax.TA_ID = tipoArtId;
                db.TipoArtefato_Taxonomias.InsertOnSubmit(tipoArtTax);
                db.SubmitChanges();

                sucess = true;

                return sucess;
            }
            catch (System.Exception ex)
            {
                throw ex;
            }
                    
        }

        public List<TipoArtefatoEntity> GetTiposArtefatos()
        {

            var tiposArtefatos = from t in db.TipoArtefatos select t;
            List<TipoArtefatoEntity> talist = new List<TipoArtefatoEntity>();

            foreach (TipoArtefato ta in tiposArtefatos.ToList())
            {
                TipoArtefatoEntity taentity = new TipoArtefatoEntity();
                taentity.TA_ID = ta.TA_ID;
                taentity.TA_NOME = ta.TA_NOME;

                talist.Add(taentity);
            }

            return talist;
        }

        public bool DeletarTipoArtefato(int taId)
        {
            try
            {
                TipoArtefato tipoArtefato = db.TipoArtefatos.Single(ta => ta.TA_ID == taId);
                db.TipoArtefatos.DeleteOnSubmit(tipoArtefato);
                db.SubmitChanges();
                return true;
            }
            catch (InvalidOperationException)
            {
                throw;
            }
        }

        public void AdicionarRelacaoTaxonomia(int taxId, int tipoArtefatoId)
        {

            try
            {
                TipoArtefato_Taxonomia tipoAE_Tax = new TipoArtefato_Taxonomia();
                tipoAE_Tax.T_ID = taxId;
                tipoAE_Tax.TA_ID = tipoArtefatoId;
                db.TipoArtefato_Taxonomias.InsertOnSubmit(tipoAE_Tax);
                db.SubmitChanges();
            }
            catch (Exception ex)
            {
                
                throw ex;
            }

        }

        public bool AdicionarTipoArtefato(TipoArtefatoEntity tae)
        {
            try
            {

                int taxonomias = (from t in db.Taxonomias
                                  where t.T_Nome.Contains(tae.TA_NOME)
                                  select t).Count();

                if (!Convert.ToBoolean(taxonomias))
                {

                    TipoArtefato tipoArtefato = new TipoArtefato();
                    tipoArtefato.TA_ID = tae.TA_ID;
                    tipoArtefato.TA_DESCRICAO = tae.TA_DESCRICAO;
                    tipoArtefato.TA_NOME = tae.TA_NOME;

                    db.TipoArtefatos.InsertOnSubmit(tipoArtefato);
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
