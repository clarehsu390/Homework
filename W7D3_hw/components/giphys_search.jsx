import React from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch {
  constructor(props) {
    this.state = { searchTerm: 'corgi'};
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);

  }
  componentDidMount() {
    this.props.fetchSearchGiphys('corgi');
  }
}
