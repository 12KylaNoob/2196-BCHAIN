//comparing functions
import React from 'react';

function Greeting() {
  return <h1>Hello! I am a standard function.</h1>;
}

const ArrowGreeting = () => <h1>Hello! I am a standard function.</h1>;

//function with an arrow function

function ShinyButton() {
  const handleClick = () => {
    alert('You clicked me!');
  };
  return <button onClick={handleClick}> Click This Button! </button>;
}

export default ShinyButton;

// function GreetFriend(props) {
//   return(
//     <h1>Hello, {props.name}!</h1>
//   );
// }

// function Greeting(){
//   return(
//     <>
//       <GreetFriend name="Willow"/>
//     </>
//   );
// }

// export default Greeting;
