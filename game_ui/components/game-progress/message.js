'use strict';
import React from 'react';
import { render } from 'react-dom';

const Message = React.createClass({
    render() {
        return (
            <div className="row">
                <div className="col-lg-12 title">
                    <h4 className="game-control subheader">{this.props.message}</h4>
                </div>
            </div>
        );
    }
});

module.exports = Message;