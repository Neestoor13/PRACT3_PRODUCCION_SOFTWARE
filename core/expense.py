from dataclasses import dataclass
from datetime import date

from core.domain_error import (
    EmptyTitleError,
    InvalidAmountError,
    InvalidExpenseDateError,
)


@dataclass
class Expense:
    id: int
    title: str
    amount: float
    description: str
    expense_date: date

    def __post_init__(self):
        """
        Devuelve, además de las excepciones declaradas, la excepción EmptyTitleError si no existe título.

        :return: None
        """

        if self.title == "":
            raise EmptyTitleError("Debe existir un título")

        if self.amount <= 0:
            raise InvalidAmountError("El importe debe ser mayor que 0")

        if self.expense_date > date.today():
            raise InvalidExpenseDateError(
                "La fecha del gasto no puede ser posterior a hoy"
            )
