---
to: backend/src/api/features/<%= h.changeCase.snake(featureNameEn) %>/<%= h.changeCase.snake(featureNameEn) %>.module.ts
---
/**
 * 「<%= featureNameJa %>」機能固有のモジュール（計算処理など）
 * @package
 */
export const <%= h.changeCase.camel(featureNameEn) %>Module = {
  exampleCalculator() {
    return
  },
}
