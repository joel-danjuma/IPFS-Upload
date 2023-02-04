# @version ^0.3.0

# Declare a variable 'owner' to store an Ethereum address
owner : public(address)
# Declare a variable 'ipfsHash' to store a string with a maximum length of 1000 characters
ipfsHash : String[1000]

@external
def __init__():
    # Set the value of the 'owner' variable to the address of the contract creator upon contract deployment
    self.owner = msg.sender
    # Set the initial value of 'ipfsHash' to 'NoHashStoredYet'
    self.ipfsHash = 'NoHashStoredYet'

@external
@nonpayable
def change_hash(new_hash : String[1000]):
    # Check if the sender of the transaction is equal to the value of the 'owner' variable. If not, raise an exception with the message 'Only Owner can change Hash !'
    assert msg.sender == self.owner , "Only Owner can change Hash !"
    # If the sender of the transaction is equal to the value of the 'owner' variable, set the value of 'ipfsHash' to the value of 'new_hash'
    self.ipfsHash = new_hash

@external
@view
def fetch_hash() -> String[1000]:
    # Return the value of 'ipfsHash'
    return self.ipfsHash