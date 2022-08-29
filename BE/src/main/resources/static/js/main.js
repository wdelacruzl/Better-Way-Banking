// Get Transaction type
const transactType = document.querySelector("#transact-type");

// Get Transaction Forms:
const paymentCard = document.querySelector(".payment-card");
const transferCard = document.querySelector(".transfer-card");
const depositCard = document.querySelector(".deposit-card");
const withdrawCard = document.querySelector(".withdraw-card");

transactType.addEventListener("change",()=>{

    // Check for transaction type and Display Correct Form:
    switch(transactType.value){
        case"payment":
            paymentCard.style.display = "block";
            paymentCard.nextElementSibling.style.display = "none";
            depositCard.style.display = "none";
            withdrawCard.style.display = "none";

        break;

        case"transfer":
            transferCard.previousElementSibling.style.display = "none";
            transferCard.style.display = "block";
            transferCard.nextElementSibling.style.display = "none";
            withdrawCard.style.display = "none";
        break;

        case"deposit":
            depositCard.previousElementSibling.style.display = "none";
            depositCard.style.display = "block";
            depositCard.nextElementSibling.style.display = "none";
            paymentCard.style.display = "none";
        break;

        case"withdraw":
            withdrawCard.previousElementSibling.style.display = "none";
            withdrawCard.style.display = "block";
            transferCard.style.display = "none";
            paymentCard.style.display = "none";
        break;

    }
});
