import{l as f,r as o,j as e,R as j,L as p,p as d}from"./index-DCybvgWj.js";import{c as m,u as v}from"./Private-NoDjZb0m.js";import{B as l}from"./logo-oca-KG9KfPz6.js";/**
 * @license lucide-react v0.513.0 - ISC
 *
 * This source code is licensed under the ISC license.
 * See the LICENSE file in the root directory of this source tree.
 */const b=[["path",{d:"m15 18-6-6 6-6",key:"1wnfg3"}]],I=m("chevron-left",b);/**
 * @license lucide-react v0.513.0 - ISC
 *
 * This source code is licensed under the ISC license.
 * See the LICENSE file in the root directory of this source tree.
 */const N=[["path",{d:"m9 18 6-6-6-6",key:"mthhwq"}]],x=m("chevron-right",N),R=()=>{var i;const{searchHistoryCache:t}=v(),r=(i=f().state)==null?void 0:i.cacheId,[c,u]=o.useState([]);return o.useEffect(()=>{const s=[];let a=r;for(;a;){const h=t[a];h?(s.unshift(h),a=h.parentId):a=void 0}s.unshift({id:"home",label:"Home",uri:"/",path:`/${d.PRIVATE}/${d.SEARCH_PAGE}`,searchInput:{},response:""}),u(s)},[r,t]),e.jsx("nav",{className:"w-full flex justify-start items-center",children:e.jsx("ol",{className:"flex items-center space-x-1",children:c.map((s,a)=>e.jsxs(j.Fragment,{children:[e.jsx("li",{className:`flex items-center ${a===c.length-1?"text-primary font-semibold":"text-gray-600"}`,children:a===c.length-1?e.jsx("span",{className:"text-sm",children:s.label}):e.jsx(p,{to:s.path,state:{cacheId:s.id},className:"hover:underline flex items-center",children:e.jsx("span",{className:"text-sm",children:s.label})})}),a<c.length-1&&e.jsx(x,{className:"h-4 w-4 text-gray-500"})]},s.id))})})},_=({responsePagination:t,loading:n,onPrevious:r,onNext:c})=>e.jsx("div",{className:"w-full flex justify-end space-x-2 mt-4 dark:text-white",children:(t==null?void 0:t.page)&&e.jsxs(e.Fragment,{children:[e.jsxs(l,{variant:"outline",children:["Total: ",t.total]}),e.jsx(l,{variant:"outline",disabled:t.page<=1||n,onClick:r,children:e.jsx(I,{})}),e.jsx(l,{variant:"outline",children:t.page}),e.jsx(l,{variant:"outline",disabled:!t.has_next_page||n,onClick:c,children:e.jsx(x,{})})]})});export{R as B,_ as P};
