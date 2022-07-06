import { CID, digest } from 'multiformats'
import { code } from '@ipld/dag-pb'

const hash = process.argv[2]
const hashBytes = new Uint8Array(Buffer.from(hash, 'hex'))
const multihash = digest.create(0x12 /* sha2-256 */, hashBytes)
const cid = CID.create(0, code, multihash)
console.log(cid.toString())

