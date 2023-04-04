using FoodDiary.Models;
using FoodDiary.Repositories;

namespace FoodDiary.Services.FoodDiary
{
    public class FoodDiaryService : IFoodDiaryService
    {
        private IFoodDiaryRepo repo;

        public FoodDiaryService(IFoodDiaryRepo repo)
        {
            this.repo = repo;
        }

        public async Task addMeal(Meal meal)
        {
            await repo.create(meal);
        }
    }
}