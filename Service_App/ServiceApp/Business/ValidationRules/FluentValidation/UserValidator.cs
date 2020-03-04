using Business.Constants;
using Core.Entity.Concrete;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.ValidationRules.FluentValidation
{
    public class UserValidator : AbstractValidator<User>
    {
        public UserValidator()
        {
            RuleFor(p => p.Name).NotEmpty().WithMessage(Messages.NameNotEmpty);
            RuleFor(p => p.Name).Length(2, 30);
        }
    }
}
