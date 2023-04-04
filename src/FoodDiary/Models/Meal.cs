namespace FoodDiary.Models
{
    public class Meal
    {
        public DateOnly Date { get; set; }
        public int Kind { get; set; }
        public TimeOnly Time { get; set; }
        public string? Notes { get; set; }
        public Courses? Courses { get; set; }

        public Meal(DateOnly date, int kind, TimeOnly time)
        {
            Date = date;
            Kind = kind;
            Time = time;
        }
    }
}