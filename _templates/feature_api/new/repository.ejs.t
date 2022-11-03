---
to: backend/src/api/features/<%= h.changeCase.snake(featureNameEn) %>/<%= h.changeCase.snake(featureNameEn) %>.repository.ts
---
/**
 * 「<%= featureNameJa %>」機能固有の外部APIとの通信関数
 * @package
 */
export const <%= h.changeCase.camel(featureNameEn) %>Repository = {
  example() {
    return
  },
}
