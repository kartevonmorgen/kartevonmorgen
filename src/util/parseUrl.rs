// TODO: export default (original) => {
// TODO:
// TODO:   const url = getHashUrl(original);
// TODO:
// TODO:   let [path, params] = url.split('?');
// TODO:
// TODO:   if (path.length >= 2) {
// TODO:     path = path.replace(/\/$/, '');
// TODO:   }
// TODO:
// TODO:   if (params) {
// TODO:     params = parseSearchParams(params);
// TODO:   } else {
// TODO:     params = {}
// TODO:   }
// TODO:
// TODO:   const actual = path + joinSearchParams(params);
// TODO:
// TODO:   return {
// TODO:     path,
// TODO:     params,
// TODO:     original,
// TODO:     actual
// TODO:   };
// TODO: }
// TODO:
// TODO: const getHashUrl = (original) => {
// TODO:   let url = original.split('#');
// TODO:
// TODO:   if (url.length >= 2) {
// TODO:     url = url[1];
// TODO:   } else {
// TODO:     url = '/';
// TODO:   }
// TODO:
// TODO:   if (url === '') {
// TODO:     url = '/';
// TODO:   }
// TODO:
// TODO:   if (url[0] !== '/') {
// TODO:     url = '/' + url;
// TODO:   }
// TODO:
// TODO:   return url;
// TODO: }
// TODO:
// TODO: const parseSearchParams = (searchString) => {
// TODO:   let pairSplit;
// TODO:   return (searchString || '').replace(/^\?/, '').split('&').reduce((p, pair) => {
// TODO:     pairSplit = pair.split('=');
// TODO:     if (pairSplit.length >= 1 && pairSplit[0].length >= 1) {
// TODO:       p[decodeURIComponent(pairSplit[0])] = decodeURIComponent(pairSplit[1]) || '';
// TODO:     }
// TODO:     return p;
// TODO:   }, {});
// TODO: }
// TODO:
// TODO: const joinSearchParams = (searchParams) => {
// TODO:   const searchString = Object
// TODO:       .keys(searchParams)
// TODO:       .reduce((p, paramKey) => p += `&${paramKey}=${searchParams[paramKey]}`, '?');
// TODO:
// TODO:   if (searchString.length <= 1) {
// TODO:     return '';
// TODO:   }
// TODO:
// TODO:   return searchString.replace('?&', '?');
// TODO: }
