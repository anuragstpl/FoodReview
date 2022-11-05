using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataLayer.DataHelper
{
    public class FoodHelper
    {
        DataLayer.UnitOfWork.UnitOfWork uow = null;
        public bool AddFood(Food food)
        {
            bool isFoodAdded = false;

            using (uow = new UnitOfWork.UnitOfWork())
            {
                try
                {
                    uow.FoodRepository.Insert(food);
                    uow.Save();
                    isFoodAdded = true;
                }
                catch
                {
                    isFoodAdded = false;
                }
            }

            return isFoodAdded;
        }

        public List<Food> GetAllFoods()
        {
            List<Food> FoodList = new List<Food>();
            using (uow = new UnitOfWork.UnitOfWork())
            {
                try
                {
                    FoodList = uow.FoodRepository.Get().ToList();
                }
                catch
                {
                }
            }
            return FoodList;
        }
    }
}
