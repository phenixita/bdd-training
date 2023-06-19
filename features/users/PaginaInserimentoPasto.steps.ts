import { Given, IWorld, When } from "@cucumber/cucumber";

When("salvo il pasto", pending);

function pending(this: IWorld) {
    return 'pending';
}