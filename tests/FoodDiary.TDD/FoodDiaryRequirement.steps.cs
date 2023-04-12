
using System.Linq.Expressions;

using FoodDiary.Models;
using FoodDiary.Repositories;
using FoodDiary.Services.FoodDiary;

namespace FoodDiary.TDD;

public class FoodDiaryRequirementsSteps
{
    
    public static void thenTheRepoContainsTheNewMeal(Mock<IFoodDiaryRepo> repoMock, Expression<Func<IFoodDiaryRepo, Task<int>>> createExp)
    {
        repoMock.Verify(createExp, Times.Once());
    }

    public static async Task whenTheMealIsAdded(Meal meal, IFoodDiaryService service)
    {
        await service.addMeal(meal);
    }

    public static IFoodDiaryService givenTheServiceIsReady(Mock<IFoodDiaryRepo> repoMock)
    {
        return new FoodDiaryService(repoMock.Object);
    }

    public static void givenTheRepositoryFoodDiaryMock(Meal meal, out Mock<IFoodDiaryRepo> repoMock, out Expression<Func<IFoodDiaryRepo, Task<int>>> createExp)
    {
        repoMock = new Mock<IFoodDiaryRepo>();
        createExp = m => m.create(meal);
        repoMock.Setup(createExp);
    }

    public static Meal givenANewMeal()
    {
        return new Meal(default, default, default);
    }
}