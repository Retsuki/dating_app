// see types of prompts:
// https://github.com/enquirer/enquirer/tree/master/examples
//
module.exports = [
  {
    type: 'input',
    name: 'path',
    message: 'ディレクトリパスは?\n👉 trigger/collections/に作成されます',
  },
  {
    type: 'input',
    name: 'collectionName',
    message: 'コレクション名は?',
  },
];
