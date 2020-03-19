using Business.Constants;
using Entities.Dto;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.ValidationRules.FluentValidation
{
    public class UserValidator : AbstractValidator<Request.User.Register>
    {
        public UserValidator()
        {
            RuleFor(p => p.Email).NotEmpty().WithMessage(Messages.MailNotEmpty);
            RuleFor(p => p.Email).EmailAddress().WithMessage(Messages.NotMail);
            RuleFor(p => p.Password).Length(6, 100).WithMessage(Messages.PasswordLenght);
        }
    }
}
