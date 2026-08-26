#include <gui/screen1_screen/Screen1View.hpp>
#include <gui/screen1_screen/Screen1Presenter.hpp>
int brillo_actual = 7;
Screen1Presenter::Screen1Presenter(Screen1View& v)
    : view(v)
{

}

void Screen1Presenter::activate()
{
    MAX7219_Set_Brigth(brillo_actual);
    view.sendBrilloValue(brillo_actual);
}

void Screen1Presenter::deactivate()
{

}

void Screen1Presenter::updateBrilloValue(int value){

	if( value == 1){
		if(brillo_actual < 15){
			brillo_actual++;
		}
	} else {
		if(brillo_actual > 0){
			brillo_actual--;
		}
	}
	MAX7219_Set_Brigth(brillo_actual);
	view.sendBrilloValue(brillo_actual);

}
