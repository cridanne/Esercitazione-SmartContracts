var giorni_settimana = ["lunedì", "martedì", "mercoledì", "giovedì", "venerdì", "sabato", "domenica"];


var mele_rimanenti = 5;

for (let i = 0; i < giorni_settimana.length; i++) {
    console.log(giorni_settimana[i] + " " + (i+1));                                 
    console.log("Ho " + mele_rimanenti + " mele");                                 

    if (giorni_settimana[i] == "mercoledì") {
        console.log("Oggi non ho voglia di mele");                                  
        console.log("Mi rimangono 3 mele")

    } else {
        if (mele_rimanenti > 2) {
            console.log("Mangio una mela");                                         
            mele_rimanenti--;                                                       
            console.log("Mi rimangono " + mele_rimanenti + " mele");                

        } else {
            if (mele_rimanenti <= 2){
                console.log("Da oggi non posso più mangiare mele");                 
                break;                                                              
            }
        }
    }
    console.log("----------------");
}

console.log("----------------");
console.log("Ho " + mele_rimanenti + " mele e non posso più mangiarle"); 


//commento di chiusura

// lalalalalalalalalalalal
