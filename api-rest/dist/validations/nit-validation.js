"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.IsNitValid = IsNitValid;
const class_validator_1 = require("class-validator");
const valitatio_utility_1 = require("../utilities/valitatio.utility");
function IsNitValid(validationOptions) {
    return function (object, propertyName) {
        (0, class_validator_1.registerDecorator)({
            name: 'isNitValid',
            target: object.constructor,
            propertyName,
            options: validationOptions,
            validator: {
                validate(value, args) {
                    return (0, valitatio_utility_1.noNitIsValid)(value);
                },
                defaultMessage(args) {
                    return 'El número de NIT no es válido';
                }
            }
        });
    };
}
//# sourceMappingURL=nit-validation.js.map