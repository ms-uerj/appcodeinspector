using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CIDao.Domain;

namespace CIDao.DAO
{
    public class ItemTaxonomiaDAO
    {

        private InspectorXDBDataContext db = new InspectorXDBDataContext();

        public List<ItemTaxonomiaEntity> GetItemsTaxonomiaList(int taxonomia_id)
        {
            var itemsTaxonomia = from it in db.ItemTaxonomias
                                 where it.T_ID == taxonomia_id
                                 select it;

            List<ItemTaxonomiaEntity> itemTaxlist = new List<ItemTaxonomiaEntity>();

            foreach (ItemTaxonomia t in itemsTaxonomia.ToList())
            {
                ItemTaxonomiaEntity itemTaxEntity = new ItemTaxonomiaEntity();
                itemTaxEntity.ID = t.IT_ID;
                itemTaxEntity.Nome = t.IT_Nome;
                itemTaxEntity.Descricao = t.IT_Descricao;
                itemTaxEntity.T_ID = t.T_ID;
                itemTaxlist.Add(itemTaxEntity);
            }

            return itemTaxlist;
        }

        public ItemTaxonomiaEntity GetItemsTaxonomia(int taxonomia_id)
        {
            ItemTaxonomia it = db.ItemTaxonomias.Single(itemTax => itemTax.IT_ID == taxonomia_id);
            ItemTaxonomiaEntity itemTaxEntity = new ItemTaxonomiaEntity();
            if (it!=null)
            {
                itemTaxEntity.ID = it.IT_ID;
                itemTaxEntity.Nome = it.IT_Nome;
                itemTaxEntity.Descricao = it.IT_Descricao;
                itemTaxEntity.T_ID = it.T_ID;
            }
            return itemTaxEntity;
        }

        public bool DeletarItemTaxonomia(int itemTax_id)
        {
            try
            {
                ItemTaxonomia itemTaxonomia = db.ItemTaxonomias.Single(itemTax => itemTax.IT_ID == itemTax_id);
                db.ItemTaxonomias.DeleteOnSubmit(itemTaxonomia);
                db.SubmitChanges();
                return true;
            }
            catch (InvalidOperationException)
            {
                return false;
            }
        }

        public bool AdicionarItemTaxonomia(int taxonomia_id, ItemTaxonomia itemTax)
        {
            try
            {
                int itemTaxonomias = (from it in db.ItemTaxonomias
                                    where it.T_ID == taxonomia_id
                                    where it.IT_Nome==itemTax.IT_Nome
                                    select it).Count();

                if (!Convert.ToBoolean(itemTaxonomias))
                {
                    db.ItemTaxonomias.InsertOnSubmit(itemTax);
                    db.SubmitChanges();
                    return true;
                }
                else
                    return false;  


            }
            catch (InvalidOperationException)
            {
                return false;
            }
        }

    }
}
