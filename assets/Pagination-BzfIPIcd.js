import{c as o,u as f}from"./Private-BecVF438.js";import{l as j,r as d,j as e,R as p,L as v,p as m}from"./index-CLlfA_5J.js";import{B as l}from"./logo-oca-C9czQAN7.js";/**
 * @license lucide-react v0.513.0 - ISC
 *
 * This source code is licensed under the ISC license.
 * See the LICENSE file in the root directory of this source tree.
 */const b=[["path",{d:"m15 18-6-6 6-6",key:"1wnfg3"}]],y=o("chevron-left",b);/**
 * @license lucide-react v0.513.0 - ISC
 *
 * This source code is licensed under the ISC license.
 * See the LICENSE file in the root directory of this source tree.
 */const N=[["path",{d:"m9 18 6-6-6-6",key:"mthhwq"}]],x=o("chevron-right",N);/**
 * @license lucide-react v0.513.0 - ISC
 *
 * This source code is licensed under the ISC license.
 * See the LICENSE file in the root directory of this source tree.
 */const I=[["path",{d:"M18 6 6 18",key:"1bl5f8"}],["path",{d:"m6 6 12 12",key:"d8bk6v"}]],C=o("x",I),R=()=>{var i;const{searchHistoryCache:t}=f(),r=(i=j().state)==null?void 0:i.cacheId,[c,u]=d.useState([]);return d.useEffect(()=>{const s=[];let a=r;for(;a;){const h=t[a];h?(s.unshift(h),a=h.parentId):a=void 0}s.unshift({id:"home",label:"Home",uri:"/",path:`/${m.PRIVATE}/${m.SEARCH_PAGE}`,searchInput:{},response:""}),u(s)},[r,t]),e.jsx("nav",{className:"w-full flex justify-start items-center",children:e.jsx("ol",{className:"flex items-center space-x-1",children:c.map((s,a)=>e.jsxs(p.Fragment,{children:[e.jsx("li",{className:`flex items-center ${a===c.length-1?"text-primary font-semibold":"text-gray-600"}`,children:a===c.length-1?e.jsx("span",{className:"text-sm",children:s.label}):e.jsx(v,{to:s.path,state:{cacheId:s.id},className:"hover:underline flex items-center",children:e.jsx("span",{className:"text-sm",children:s.label})})}),a<c.length-1&&e.jsx(x,{className:"h-4 w-4 text-gray-500"})]},s.id))})})},g=({responsePagination:t,loading:n,onPrevious:r,onNext:c})=>e.jsx("div",{className:"w-full flex justify-end space-x-2 mt-4 dark:text-white",children:(t==null?void 0:t.page)&&e.jsxs(e.Fragment,{children:[e.jsxs(l,{variant:"outline",children:["Total: ",t.total]}),e.jsx(l,{variant:"outline",disabled:t.page<=1||n,onClick:r,children:e.jsx(y,{})}),e.jsx(l,{variant:"outline",children:t.page}),e.jsx(l,{variant:"outline",disabled:!t.has_next_page||n,onClick:c,children:e.jsx(x,{})})]})});export{R as B,g as P,C as X};
