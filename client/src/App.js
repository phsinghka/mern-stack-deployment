import React, { useState, useEffect } from 'react';
import axios from 'axios';

function App() {
  const [message, setMessage] = useState('');

  useEffect(() => {
    axios.get('/api')
      .then(response => setMessage(response.data))
      .catch(error => console.error(error));
  }, []);

  return (
    <div>
      <h1>{message}</h1>
    </div>
  );
}

export default App;

