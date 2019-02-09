import React from 'react';
import Expeditions from './Expeditions';

  const expeditionsData= [
  {
    title: ''
  },

  {
    title: ''
  },
  {
    title: ''
  },

  ];

export default class Application extends React.Component {

  render() {
    return (
      // JSX
    <div>
      <Expeditions expeditions={expeditionsData} />
    </div>
    );
  }
}
