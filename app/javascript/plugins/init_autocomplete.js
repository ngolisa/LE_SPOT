import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('query');
  if (addressInput) {
    places({ container: addressInput });
  }

  const addressInput2 = document.getElementById('spot_city');
  if (addressInput2) {
    places({ container: addressInput2 });
  }
};

export { initAutocomplete };
