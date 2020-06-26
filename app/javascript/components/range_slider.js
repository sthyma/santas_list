const rangeSlider = () => {
  const slider = document.getElementById("myRange");
  const output = document.getElementById("wish-position");

  if (output) {
    output.innerHTML = slider.value; // Display the default slider value
  
    // Update the current slider value (each time you drag the slider handle)
    slider.oninput = function() {
      output.innerHTML = this.value;
    }
  }

}

export { rangeSlider }