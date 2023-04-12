using System.Linq.Expressions;

using FoodDiary.Models;
using FoodDiary.Repositories;
using FoodDiary.Services.FoodDiary;

namespace FoodDiary.TDD;

public class FoodDiaryRequirements
{
    [Fact]
    public async void ShouldAllowToAddNewMealToTheList()
    {
        // Arrange
        Meal meal = FoodDiaryRequirementsSteps.givenANewMeal();
        Mock<IFoodDiaryRepo> repoMock;
        Expression<Func<IFoodDiaryRepo, Task<int>>> createExp;
        FoodDiaryRequirementsSteps.givenTheRepositoryFoodDiaryMock(meal, out repoMock, out createExp);
        IFoodDiaryService service = FoodDiaryRequirementsSteps.givenTheServiceIsReady(repoMock);

        // Act
        await FoodDiaryRequirementsSteps.whenTheMealIsAdded(meal, service);

        // Assert
        FoodDiaryRequirementsSteps.thenTheRepoContainsTheNewMeal(repoMock, createExp);
    }


    class ExpectedMeal
    {
        public DateOnly Date { get; set; }
        public int Kind { get; set; }
        public TimeOnly Time { get; set; }
        public string? Notes { get; set; }
        public Object? Courses { get; set; }
    }
    [Fact]
    public void ShouldDefineMeal()
    {
        // Act
        var meal = new Meal(default, default, default);

        // Assert
        meal.Should().BeEquivalentTo(new ExpectedMeal());
    }
}