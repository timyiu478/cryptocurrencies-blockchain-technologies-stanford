from sys import exit
from bitcoin.core.script import *

from lib.utils import *
from lib.config import (my_private_key, my_public_key, my_address,
                    faucet_address, network_type)
from Q1 import send_from_P2PKH_transaction


######################################################################
# TODO: Complete the scriptPubKey implementation for Exercise 2
Q2a_txout_scriptPubKey = [
        # stack [x, y]
        OP_2DUP, # [x, y, x, y]
        OP_ADD, # [x, y, x+y]
        2, # [x, y, x+y, 2]
        OP_EQUALVERIFY, # [x, y]
        OP_SUB, # [x-y]
        0, #[x-y, 0]
        OP_EQUAL # [1/0]
    ]
######################################################################

if __name__ == '__main__':
    ######################################################################
    # TODO: set these parameters correctly
    amount_to_send = 0.0001 # amount of BTC in the output you're sending minus fee
    txid_to_spend = (
        'be76e44f2cbb2692a24b1598d5fbec0b81ac3a36d660c3fbff74164132a784a0')
    utxo_index = 6 # index of the output you are spending, indices start at 0
    ######################################################################

    response = send_from_P2PKH_transaction(
        amount_to_send, txid_to_spend, utxo_index,
        Q2a_txout_scriptPubKey, my_private_key, network_type)
    print(response.status_code, response.reason)
    print(response.text)
