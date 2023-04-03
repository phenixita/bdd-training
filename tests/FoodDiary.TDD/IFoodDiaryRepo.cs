namespace FoodDiary.TDD
{
    public interface IFoodDiaryRepo
    {
        Task<int> create(Meal meal);
    }
}