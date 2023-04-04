using FoodDiary.Models;

namespace FoodDiary.Repositories
{
    public interface IFoodDiaryRepo
    {
        Task<int> create(Meal meal);
    }
}