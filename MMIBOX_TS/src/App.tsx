import "bootstrap/dist/css/bootstrap.min.css";
import "styles/global.css";

import { Provider } from "react-redux";
import store from "redux/store";
import {BrowserRouter} from 'react-router-dom'
import RtPage from "./pages/pageRoute";

function App(): JSX.Element {
  return (
   <BrowserRouter>
    <Provider store={store}>
      <div className="App">
        <RtPage />
      </div>
    </Provider>
    </BrowserRouter> 
  );
}

export default App;
