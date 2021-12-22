var CompCount;
var FilterOn = 0;
var FilterList = "";
var Flags;
var Clubs;
var Countries;
var IDs;
var Sep = "_";
var TickHide;
var TickShow;

function FlopLine(c, on) {
    var pos;
    var pat;
    pat = Sep + IDs[c] + Sep;
    pos = FilterList.indexOf(pat);
    if(on) {
        $("#on-" + c).show();
        $("#off-" + c).hide();
        if(FilterList == "")
            FilterList = pat;
        else
        if(pos == -1)
            FilterList = FilterList + IDs[c] + Sep;
    }
    else {
        $("#off-" + c).show();
        $("#on-" + c).hide();
        if(pos >= 0)
            FilterList = FilterList.replace(pat, Sep);
    }
    Flags[c] = on;
}
function Club(c) {
    for(i = 1; i <= CompCount; i++)
        if(Flags[i] != Flags[c] &&
                Clubs[i] == Clubs[c])
            FlopLine(i, Flags[c]);
    if(Flags[c])
        ApplyFilter(1)
}
function Surname(n) {
    for(i = 1; i <= CompCount; i++)
        if(Flags[i] != Flags[c] &&
                Surnames[i] == Surnames[c])
            FlopLine(i, Flags[c]);
    if(Flags[c])
        ApplyFilter(1)
}
function ApplyFilter(on) {
    FilterOn = on;
    if(FilterOn) {
        $(".res-line").hide();
        for(i = 1; i <= CompCount; i++)
            if(Flags[i])
                $("#res-" + i).show();
        $(".shared").show();
        $("#butFilter").html(TickShow);
        $("#imgFilter").attr("src", "/img/ic_filter_off_outline.png");
    }
    else {
        $(".res-line").show();
        $(".shared").hide();
        $("#butFilter").html(TickHide);
        $("#imgFilter").attr("src", "/img/ic_filter_outline.png");
    }
}
