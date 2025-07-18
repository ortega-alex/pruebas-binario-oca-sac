"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.IsDpiValid = IsDpiValid;
const class_validator_1 = require("class-validator");
const valitatio_utility_1 = require("../utilities/valitatio.utility");
function IsDpiValid(validationOptions) {
    return function (object, propertyName) {
        (0, class_validator_1.registerDecorator)({
            name: 'isDpiValid',
            target: object.constructor,
            propertyName,
            options: validationOptions,
            validator: {
                validate(value, args) {
                    return (0, valitatio_utility_1.noDpiIsValid)(value);
                },
                defaultMessage(args) {
                    return 'El número de DPI no es válido';
                }
            }
        });
    };
}
//# sourceMappingURL=dpi-validation.js.map