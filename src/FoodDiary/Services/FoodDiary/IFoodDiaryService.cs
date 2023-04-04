using FoodDiary.Models;

namespace FoodDiary.Services.FoodDiary
{
    public interface IFoodDiaryService
    {
        Task addMeal(Meal meal);
    }
}