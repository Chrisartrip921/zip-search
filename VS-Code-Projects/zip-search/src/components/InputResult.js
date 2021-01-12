import React, { Component } from 'react'

class InputResult extends Component {
    constructor() {
        super();
        this.state = {
            loading: true,
            place: null
        }
    }
    async componentDidMount() {
        const url = `http://ctp-zip-api.herokuapp.com/zip/${}`;
        const response = await fetch(url);
        const data = await response.json();
        this.setState({place: data[0], loading: false});
        console.log(data[0]);
    }

    render() {
        return (
        <div>
            {
                this.state.loading || !this.state.place ? 
                (<div>loading...</div> )
                : 
                (<div>
                    <div>
                       {this.state.place.City} 
                    </div>
                    <div>
                       {this.state.place.State} 
                    </div>
                </div>)

                
            }
        </div>
        );
    }
}


export default InputResult;