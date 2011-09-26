using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CIDao.Domain;
using CIDao.DAO;

namespace CIFacade.Facade
{
    public class TipoArtefatoFacade
    {

        public List<TipoArtefatoEntity> GetTiposArtefatos()
        {
            return new TipoArtefatoDao().GetTiposArtefatos();
        }

        public TipoArtefatoEntity getTipoArtefato(int taxId)
        {
            return new TipoArtefatoDao().getTipoArtefato(taxId);
        }

        public  bool SetRealacaoTaxonomia(int taxId,int tipoArtId)
        {
            return new TipoArtefatoDao().SetRelacaoTaxonomia(taxId, tipoArtId);
        }

    }
}
