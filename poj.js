function chuzpuz(DaqDaH) {
    if (DaqDaH.length > 0) {
        var Daq = DaqDaH[0].id;

        browser.runtime.onMessage.addListener(function(QIn) {
            var muz = document.getElementById("muz");
            muz.value = QIn.wIvluz;
            poj(muz.value, true);
        });

        browser.tabs.executeScript(Daq, {file: "browser-polyfill.js"});
        browser.tabs.executeScript(Daq, {file: "nawz.js"});
    }
}

function Seng(SengDez) {
    console.log(`Error: ${SengDez}`);
}

window.addEventListener("DOMContentLoaded", function() {
    var chuzlIz = browser.tabs.query({
        currentWindow: true,
        active: true
    });
    chuzlIz.then(chuzpuz, Seng);
});

function poj(muz, pup) {
    var tetlh = document.getElementById("poj");
    tetlh.textContent = "";

    if (!muz) {
        return;
    }

    var Sam = Object.keys(q.qawHaq).filter(function(nej) {
        if (pup) {
            return q.qawHaq[nej].entry_name == muz;
        } else {
            return nej.includes(muz);
        }
    });

    Sam.forEach(function(Dez){
        var zaploz = document.createElement("li");
        zaploz.className = "muz_zaploz";
        var muz = document.createElement("span");
        muz.className = "muz";
        var jIyweS = document.createElement("span");
        jIyweS.className = "jIyweS";

        muz.innerHTML = q.qawHaq[Dez].entry_name;
        jIyweS.innerHTML = q.qawHaq[Dez].definition["en"];
        zaploz.appendChild(muz);
        zaploz.appendChild(jIyweS);
        tetlh.appendChild(zaploz);
    });
}

var muz = document.getElementById("muz");
muz.addEventListener("input", function() {
    poj(muz.value, false);
});
