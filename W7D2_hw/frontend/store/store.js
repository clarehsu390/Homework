import { createStore, applyMiddleware } from 'redux';
import RootReducer from '../reducers/root_reducer';

const configureStore = (preloadedState = {}) => {
const store = createStore(RootReducer, preloadedState,
  applyMiddleware(addLoggingtoDispatch));
  store.subscribe(() => {
    localStorage.state = JSON.stringify(store.getState());
  });
  return store;
};

const addLoggingtoDispatch = store => next => action =>  {
  let dispatchStore = store.dispatch;
  console.log(store.getState());
  console.log(action);
  next(action);
  console.log(store.getState());
};

export default configureStore;
