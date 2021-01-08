const deleteCookie = ( name ) => {
  document.cookie = name + '=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
}

const deleteAllCookies = () => {
  document.cookie.split(";").forEach( c => {
    deleteCookie(c.split("=")[0]);
  });
}

export default { deleteCookie, deleteAllCookies }