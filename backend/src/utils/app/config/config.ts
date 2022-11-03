const Environments = {
  production: 'dating-app-production',
  staging: 'dating-app-staging',
  development: 'dating-app-development',
} as const

export class Config {
  static env = process.env
  static projectId = this.env.GCLOUD_PROJECT
  static isProduction = this.projectId === Environments.production
  static isStaging = this.projectId === Environments.staging
  static isDevelopment = this.projectId === Environments.development
  static isLocal = process.env.NODE_ENV === 'local'
}
