using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CIDao;
using CIDao.DAO;
using CIDao.Domain;

namespace InspectorXBLL.BLL
{
    public class ItemTaxonomiaBLL
    {
        public List<ItemTaxonomiaEntity> GetItemsTaxonomiaList(int taxonomia_id)
        {
            return new ItemTaxonomiaDAO().GetItemsTaxonomiaList(taxonomia_id);
        }

        public ItemTaxonomiaEntity GetItemsTaxonomia(int taxonomia_id)
        {
            return new ItemTaxonomiaDAO().GetItemsTaxonomia(taxonomia_id);
        }

        public bool DeletarItemTaxonomia(int taxonomia_id)
        {
            try
            {

                return new ItemTaxonomiaDAO().DeletarItemTaxonomia(taxonomia_id);

            }
            catch (InvalidOperationException)
            {
                return false;
            }
        }


        public bool AdicionarItemTaxonomia(int taxonomia_id,string nome, string descricao)
        {
            try
            {
                ItemTaxonomia it = new ItemTaxonomia();
                it.T_ID = taxonomia_id;
                it.IT_Nome = nome;
                it.IT_Descricao = descricao;

                return new ItemTaxonomiaDAO().AdicionarItemTaxonomia(taxonomia_id, it);

            }
            catch (InvalidOperationException)
            {
                return false;
            }
        }
    }
}
