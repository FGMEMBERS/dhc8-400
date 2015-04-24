
var popway = func {

# Next Waypoint
    if (getprop("autopilot/internal/eta-wp-hr") < 1) {
        if (getprop("autopilot/internal/eta-wp-min") < .2) {
				
        var curwp = getprop("autopilot/route-manager/current-wp");
        var nextwp = curwp + 1;
        setprop("autopilot/route-manager/current-wp", nextwp);
        }
    }
}
setlistener("/autopilot/route-manager/flight-time", popway, 0, 0);

