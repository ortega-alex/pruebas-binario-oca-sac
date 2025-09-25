"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.SINONIMOS = void 0;
exports.normalizarYTokenizar = normalizarYTokenizar;
exports.SINONIMOS = {
    av: 'avenida',
    ave: 'avenida',
    aven: 'avenida',
    'aven.': 'avenida',
    avenida: 'avenida',
    calle: 'calle',
    callejon: 'calle',
    col: 'colonia',
    colonia: 'colonia',
    cta: 'carretera',
    carretera: 'carretera',
    zon: 'zona',
    zona: 'zona',
    z: 'zona',
    mz: 'manzana',
    manzana: 'manzana',
    lt: 'lote',
    lote: 'lote'
};
function normalizarYTokenizar(texto) {
    if (!texto)
        return [];
    let lower = texto.toLowerCase();
    lower = lower.normalize('NFD').replace(/[\u0300-\u036f]/g, '');
    lower = lower.replace(/[^a-z0-9]/g, ' ');
    lower = lower.replace(/\s+/g, ' ').trim();
    let tokens = lower.split(' ');
    tokens = tokens.map(t => exports.SINONIMOS[t] ?? t);
    const uniqueTokens = [...new Set(tokens)];
    return uniqueTokens;
}
//# sourceMappingURL=format.utility.js.map