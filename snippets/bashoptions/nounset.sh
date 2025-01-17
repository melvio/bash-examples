#!/usr/bin/env bash

nobel_price_winner_medine1991=

echo "congratz winner of 1991 ${nobel_price_winner_medine1991}!" # congratz winner of 1991 !

echo "congratz winner of 2071 ${nobel_price_winner_medine2071}!" # congratz winner of 2171 !

# fail when trying to use variables that are not set
set -o nounset

# empty variable are still fine
echo "congratz winner of 1991 ${nobel_price_winner_medine1991}!" # congratz winner of 1991 !

# providing a default value is still acceptable
echo "congratz winner of 2071 ${nobel_price_winner_medine2071:-"you"}!" # congratz winner of 2071 you!

# However, now this variable has not been set at all
echo "congratz winner of 2071 ${nobel_price_winner_medine2071}!" # ./nounset: nobel_price_winner_medine2071: unbound variable


