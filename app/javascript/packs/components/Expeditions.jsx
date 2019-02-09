import React from 'react';

export deaulf class Expeditions extends React.Components {
  constructor(props) {
    super(props);
    this.state = {
      expeditions: []
    };
  }


  render(){
    const{expeditions} = this.state; /деструктуризация
    const rows = expeditions.map(function(value){
      return(
          <Expedition expedition={value}/>
        );
      });
    return(
      <table></table>
        <thead>
          <tr>
            <th>Name<th/>
          </tr>
        </thead>
        body
        tr
        td Экспедиция на (this.props.planet)
        td Экспедиция на {planet}. Руководитель {name}

  componentDidMount() {
    fetch('/v1/expeditions.json',
    headers: {
      'Authorization': 'Token asaq323412'
    }
    )
    .then((response) => response.json())
    .then((result) => {
      this.setState({
        expeditions: result
      });
      
    .catch(err => console.error(err))

    this.setState({
      expeditions: this.props.expeditions
    })
  }
  }
}
