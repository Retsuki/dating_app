---
to: backend/src/api/features/<%= h.changeCase.snake(featureNameEn) %>/<%= h.changeCase.snake(featureNameEn) %>.constant.ts
---
/**
 * 「<%= featureNameJa %>」機能固有の定数
 * @package
 */
export const <%= h.changeCase.camel(featureNameEn) %>Constant = {
  exampleApiUrl: 'https://example.com',
}
