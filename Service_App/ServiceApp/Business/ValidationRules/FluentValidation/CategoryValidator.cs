using Core.Utilities.Messages;
using Entities.Concrete;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.ValidationRules.FluentValidation
{
    public class CategoryValidator : AbstractValidator<Entities.Dto.Request.Category.Create>
    {
        public CategoryValidator()
        {
            RuleFor(p => p.Name).NotEmpty().WithMessage(Messages.NameNotEmpty);
            RuleFor(p => p.Name).Length(2, 30);
        }
    }
}
