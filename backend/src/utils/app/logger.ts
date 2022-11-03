import { logger } from 'firebase-functions/v1'

export class Logger {
  static success(message: string, ...args: any[]) {
    logger.log(`✅Success: ${message}\n${args}`)
  }
  static error(message: string, ...args: any[]) {
    logger.error(`🔴Error: ${message}\n${args}`)
  }
  static warn(message: string, ...args: any[]) {
    logger.warn(`⚠️Warn: ${message}\n${args}`)
  }
  static log(message: string, ...args: any[]) {
    logger.log(`⚙️Log: ${message}\n${args}`)
  }
}
