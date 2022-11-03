---
to: backend/src/api/features/<%= h.changeCase.snake(featureNameEn) %>/<%= h.changeCase.snake(featureNameEn) %>.service.ts
---
import { HTTP500Error } from '../../../utils/error/error'

/**
 * 「<%= featureNameJa %>」機能固有のサービス（constant + module + repositoryを合わせた処理）
 */
export const <%= h.changeCase.camel(featureNameEn) %>Service = {
  /**
   * Description
   */
  xxxxx() {
    try {
      return
    } catch (error) {
      throw new HTTP500Error({
        error: `xxxxx(). \n${error}`,
      })
    }
  },
}
