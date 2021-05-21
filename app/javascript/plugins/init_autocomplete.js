import places from "places.js";

const initAutocomplete = () => {
  const friendInput = document.getElementById("friend_address");
  if (friendInput) {
    places({ container: friendInput });
  }

  const bookingInput = document.getElementById("booking_address");
  if (bookingInput) {
    places({ container: bookingInput });
  }
};

export { initAutocomplete };
