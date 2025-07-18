"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.noNitIsValid = exports.noDpiIsValid = void 0;
const noDpiIsValid = (no_dpi) => {
    if (!no_dpi || String(no_dpi).trim() === '')
        return false;
    const cuiRegExp = /^[0-9]{4}\s?[0-9]{5}\s?[0-9]{4}$/;
    if (!cuiRegExp.test(no_dpi))
        return false;
    no_dpi = String(no_dpi).replace(/\s/, '').replace(/ /g, '');
    const depto = parseInt(no_dpi.substring(9, 11), 10);
    const muni = parseInt(no_dpi.substring(11, 13));
    const numero = no_dpi.substring(0, 8);
    const verificador = parseInt(no_dpi.substring(8, 9));
    const munisPorDepto = [
        17,
        8,
        16,
        16,
        13,
        14,
        19,
        8,
        24,
        21,
        9,
        30,
        32,
        21,
        8,
        17,
        14,
        5,
        11,
        11,
        7,
        17
    ];
    if (depto === 0 || muni === 0)
        return false;
    if (depto > munisPorDepto.length)
        return false;
    if (muni > munisPorDepto[depto - 1])
        return false;
    let total = 0;
    for (let i = 0; i < numero.length; i++) {
        total += Number(numero[i]) * (i + 2);
    }
    const modulo = total % 11;
    return modulo === verificador;
};
exports.noDpiIsValid = noDpiIsValid;
const noNitIsValid = (nit) => {
    if (!nit || String(nit).trim() === '')
        return false;
    const nitRegExp = /^[0-9]+(-?[0-9kK])?$/;
    if (!nitRegExp.test(nit))
        return false;
    nit = String(nit).replace(/-/, '');
    const lastChar = nit.length - 1;
    const number = nit.substring(0, lastChar);
    const expectedCheker = nit.substring(lastChar, lastChar + 1).toLowerCase();
    let factor = number.length + 1;
    let total = 0;
    for (let i = 0; i < number.length; i++) {
        const character = number.substring(i, i + 1);
        const digit = parseInt(character, 10);
        total += digit * factor;
        factor = factor - 1;
    }
    const modulus = (11 - (total % 11)) % 11;
    const computedChecker = modulus === 10 ? 'k' : modulus.toString();
    if (/\s/.test(nit) || nit.includes('-'))
        return false;
    return expectedCheker === computedChecker;
};
exports.noNitIsValid = noNitIsValid;
//# sourceMappingURL=valitatio.utility.js.map