import React from 'react'
import { connect } from 'react-redux'

import Login from './login'
import Lobby from './lobby'
import Game from './game'
import Table from './table'

class Index extends React.Component {
  render() {
    switch (this.props.status) {
      case 'observer':
        return <Table />
      case "logged":
        return <Lobby />
      case "started":
        return <Game />
      case "ended":
        return <p>GAME OVER!</p>
      default:
        return <Login />
    }
  }
}

const mapStateToProps = (state) => {
  return {
    status: state.login.status
  }
}

export default connect(mapStateToProps)(Index)
