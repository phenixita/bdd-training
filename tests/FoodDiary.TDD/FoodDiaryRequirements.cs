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
        var meal = new Meal(default, default, default);
        var repoMock = new Mock<IFoodDiaryRepo>();
        Expression<Func<IFoodDiaryRepo, Task<int>>> createExp = m => m.create(meal);
        repoMock.Setup(createExp);
        IFoodDiaryService service = new FoodDiaryService(repoMock.Object);

        // Act
        await service.addMeal(meal);

        // Assert
        repoMock.Verify(createExp, Times.Once());
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