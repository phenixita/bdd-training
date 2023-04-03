namespace FoodDiary.TDD
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
            await this.repo.create(meal);
        }
    }
}