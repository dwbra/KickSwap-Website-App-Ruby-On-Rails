const button = document.querySelector("[data-stripe='payment']");
    if (button) {
        button.addEventListener("click", () => {
        const {sessionId, publicKey} = button.dataset
          const stripe = Stripe(
            publicKey
          )

          stripe.redirectToCheckout({
            sessionId
          })
        })
    }