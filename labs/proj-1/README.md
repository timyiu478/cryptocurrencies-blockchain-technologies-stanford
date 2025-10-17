# A Merkle Proof

## Merkle Proof Generation High Level Idea

todo

## Example Runs

1. data item 0

```bash
tim@tim-virtual-machine ~/g/b/l/proj-1 (main)> python3 prover.py 0

I generated #1000 leaves for a Merkle tree.
I generated a Merkle proof for leaf #0 in file merkle_proof.txt

tim@tim-virtual-machine ~/g/b/l/proj-1 (main)> python3 verifier.py
I verified the Merkle proof: leaf #0 in the committed tree is "data item 0".
```

2. data item 777

```bash
tim@tim-virtual-machine ~/g/b/l/proj-1 (main) [1]> python3 prover.py 777

I generated #1000 leaves for a Merkle tree.
I generated a Merkle proof for leaf #777 in file merkle_proof.txt

tim@tim-virtual-machine ~/g/b/l/proj-1 (main)> python3 verifier.py
I verified the Merkle proof: leaf #777 in the committed tree is "data item 777".
```

3. data item 999

```bash
tim@tim-virtual-machine ~/g/b/l/proj-1 (main) [1]> python3 prover.py 999

I generated #1000 leaves for a Merkle tree.
I generated a Merkle proof for leaf #999 in file merkle_proof.txt

tim@tim-virtual-machine ~/g/b/l/proj-1 (main)> python3 verifier.py
I verified the Merkle proof: leaf #999 in the committed tree is "data item 999".
```
