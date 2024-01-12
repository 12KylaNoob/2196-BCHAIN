import React from 'react';
import './style.css';
import ShinyButton from './component/Conditional-Demo-1';
import RainOrShine from './component/Conditional-Demo-2';
import RainOrSunny from './component/Conditional-Demo-3';
import PourOrSunny from './component/Conditional-Demo-4';

export default function App() {
  return (
    <>
      <div>
        <h1>Hello StackBlitz!</h1>
        <p>Start editing to see some magic happen :)</p>
      </div>
      <div>
        <ShinyButton />
      </div>
      <div>
        <RainOrShine isRainy={true} />
      </div>
      <div>
        <RainOrSunny isRainy={false} />
      </div>
      {/* <div className={'${isRainy === true ? 'dark' : 'light'}'}>
        <PourOrSunny />
      </div> */}
    </>
  );
}
