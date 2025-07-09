class Utils {
  static getTextOnBoarding(int index) {
    if (index == 0) {
      return "Save Your\n    Meals\n Ingredient";
    } else if (index == 1) {
      return "Use Our App \n   The Best \n     Choice";
    } else {
      return "     Our App\n Your Ultimate \n   Choice";
    }
  }

  static getDescriptionOnBoarding(int index) {
    if (index == 0) {
      return "Add Your Meals and its Ingredients and we will save it for you";
    } else if (index == 1) {
      return "the best choice for your kitchen do not hesitate";
    } else {
      return " All the best restaurants and their top menus are ready for you";
    }
  }
}
