from bitcoin.core.script import *

######################################################################
# These functions will be used by Alice and Bob to send their respective
# coins to a utxo that is redeemable either of two cases:
# 1) Recipient provides x such that hash(x) = hash of secret
#    and recipient signs the transaction.
# 2) Sender and recipient both sign transaction
#
# TODO: Fill these in to create scripts that are redeemable by both
#       of the above conditions.
# See this page for opcode documentation: https://en.bitcoin.it/wiki/Script

# This is the ScriptPubKey for the swap transaction
def coinExchangeScript(public_key_sender, public_key_recipient, hash_of_secret):
    return [
        # expression is controlled by scriptSig
        OP_IF,
            OP_HASH160,
            hash_of_secret,
            OP_EQUALVERIFY,
        OP_ELSE,
            public_key_sender,
            OP_CHECKSIGVERIFY,
        OP_ENDIF,
        public_key_recipient, # need to check for both cases: 1) secret + sig of recipient and 2) sigs of recipient and sender
        OP_CHECKSIG
    ]

# This is the ScriptSig that the receiver will use to redeem coins
def coinExchangeScriptSig1(sig_recipient, secret):
    return [
        sig_recipient,
        secret,
        OP_TRUE
    ]

# This is the ScriptSig for sending coins back to the sender if unredeemed
def coinExchangeScriptSig2(sig_sender, sig_recipient):
    return [
        sig_recipient,
        sig_sender,
        OP_FALSE
    ]
######################################################################

######################################################################
#
# Configured for your addresses
#
# TODO: Fill in all of these fields
#

# Bitcoin testnet

alice_txid_to_spend     = "693ac4fb74e4f0ce18649eee11cb8ef9259e2b3a94cdb805008ec9f0673a4c98"
alice_utxo_index        = 1
alice_amount_to_send    = 0.001

# BCY testnet

bob_txid_to_spend       = "30bcc393f8576ec209a724f984a870c7c69f2c1b54c487230b3549f9e0759033"
bob_utxo_index          = 0
bob_amount_to_send      = 0.0008

# Get current block height (for locktime) in 'height' parameter for each blockchain (will be used in swap.py):
#  curl https://api.blockcypher.com/v1/btc/test3
btc_test3_chain_height  = 4737320

#  curl https://api.blockcypher.com/v1/bcy/test
bcy_test_chain_height   = 2076167

# Parameter for how long Alice/Bob should have to wait before they can take back their coins
# alice_locktime MUST be > bob_locktime
alice_locktime = 5
bob_locktime = 3

tx_fee = 0.0001

# While testing your code, you can edit these variables to see if your
# transaction can be broadcasted succesfully.
broadcast_transactions = False
alice_redeems = True

######################################################################
