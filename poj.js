function chuzpuz(DaqDaH) {
    if (DaqDaH.length > 0) {
        var Daq = DaqDaH[0].id;

        browser.runtime.onMessage.addListener(function(QIn) {
            var muz = document.getElementById("muz");
            muz.value = QIn.wIvluz;
        });

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
