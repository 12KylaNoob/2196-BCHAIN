import React from 'react';

function Rainy() {
  return <h1>Bring your umbrella!</h1>;
}

function Sunny() {
  return <h1>Bring your sunglasses!</h1>;
}

function RainOrSunny(props) {
  const isRainy = props.isRainy;
  if (isRainy) {
    return <Rainy />;
  }
  return <Sunny />;
}

export default RainOrSunny;
