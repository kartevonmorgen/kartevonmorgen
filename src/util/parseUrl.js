export default (original) => {

  const url = getHashUrl(original);

  let [path, params] = url.split('?');

  if (path.length >= 2) {
    path = path.replace(/\/$/, '');
  }

  if (params) {
    params = parseSearchParams(params);
  } else {
    params = {}
  }

  const actual = path + joinSearchParams(params);

  return {
    path,
    params,
    original,
    actual
  };
}

const getHashUrl = (original) => {
  let url = original.split('#');

  if (url.length >= 2) {
    url = url[1];
  } else {
    url = '/';
  }

  if (url === '') {
    url = '/';
  }

  if (url[0] !== '/') {
    url = '/' + url;
  }

  return url;
}

const parseSearchParams = (searchString) => {
  let pairSplit;
  return (searchString || '').replace(/^\?/, '').split('&').reduce((p, pair) => {
    pairSplit = pair.split('=');
    if (pairSplit.length >= 1 && pairSplit[0].length >= 1) {
      p[decodeURIComponent(pairSplit[0])] = decodeURIComponent(pairSplit[1]) || '';
    }
    return p;
  }, {});
}

const joinSearchParams = (searchParams) => {
  const searchString = Object
      .keys(searchParams)
      .reduce((p, paramKey) => p += `&${paramKey}=${searchParams[paramKey]}`, '?');

  if (searchString.length <= 1) {
    return '';
  }

  return searchString.replace('?&', '?');
}
