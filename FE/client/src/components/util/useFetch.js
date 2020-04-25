import { useState, useEffect } from 'react';

function useFetch(callback, url) {
    const [loading, setLoading] = useState(true);
    const fetchInitialData = async () => {
        const response = await fetch(url);
        const initialData = await response.json();
        callback(initialData);
        setLoading(false);
    };

    useEffect(() => {
        fetchInitialData();
    }, []);

    return loading;
}

export default useFetch;