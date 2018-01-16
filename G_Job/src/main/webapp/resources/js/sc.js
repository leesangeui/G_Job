
var banner_1_mouseEvent = 1;
var banner_2_mouseEvent = 1;

// banner_roll("div�±� id", ���1������, ������, 1ĭ�̵��ӵ�, 0);
function banner_roll(div_id, banner_width, banner_delay, banner_speed, this_width)
{
    if(eval(div_id + "_mouseEvent")){
        var div_tag = document.getElementById(div_id);
        var a_tag, i;

        this_width++;
        if(this_width < banner_width){
            div_tag.style.left = -this_width;
            setTimeout("banner_roll('" + div_id + "', " + banner_width + ", " + banner_delay + ", " + banner_speed + ", " + this_width + ");", banner_speed);
        }
        else{
        a_tag = div_tag.getElementsByTagName("TABLE");
        div_tag.appendChild(a_tag[0]);
        div_tag.style.left = 0;
        setTimeout("banner_roll('" + div_id + "', " + banner_width + ", " + banner_delay + ", " + banner_speed + ", 0);", banner_delay);
        }
    }
    else{
    setTimeout("banner_roll('" + div_id + "', " + banner_width + ", " + banner_delay + ", " + banner_speed + ", " + this_width + ");", banner_speed);
    }
    return true;
}
