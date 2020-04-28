const getCookie = (key) => {
    var value = "; " + document.cookie;
    var parts = value.split("; " + key + "=");
    if (parts.length == 2) return parts.pop().split(";").shift();
};

const deleteCookie = (key) => {
    document.cookie = key + "=; expires=Thu, 01 Jan 1999 00:00:10 GMT;";
};

export { getCookie, deleteCookie };