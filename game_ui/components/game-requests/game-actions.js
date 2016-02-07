'use strict';
import Reflux from 'reflux';

const GameActions = Reflux.createActions(
    {
        'start': {children: ['completed']}
    }
);

module.exports = GameActions;