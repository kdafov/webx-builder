@echo off

:: Remove existing .gitignore file if it exists
if exist .gitignore (
    del .gitignore >nul 2>&1
)

:: Create a new .gitignore file
(
    echo # Logs
    echo logs/
    echo *.log
    echo npm-debug.log*
    echo yarn-debug.log*
    echo yarn-error.log*
    echo pnpm-debug.log*
    echo.
    echo # Dependency directories
    echo node_modules/
    echo jspm_packages/
    echo .pnp/
    echo .pnp.js
    echo.
    echo # Testing files
    echo coverage/
    echo .nyc_output/
    echo *.lcov
    echo.
    echo # Production build output
    echo dist/
    echo build/
    echo .tmp/
    echo .temp/
    echo.
    echo # TypeScript
    echo *.tsbuildinfo
    echo tsconfig.tsbuildinfo
    echo.
    echo # IDE and Editor files
    echo .idea/
    echo .vscode/
    echo *.suo
    echo *.ntvs*
    echo *.njsproj
    echo *.sln
    echo *.sw?
    echo.
    echo # Operating system files
    echo .DS_Store
    echo Thumbs.db
    echo.
    echo # dotenv environment files
    echo .env
    echo .env.test
    echo .env.production
    echo .env.local
    echo.
    echo # NPM and Yarn files
    echo package-lock.json
    echo yarn.lock
    echo pnpm-lock.yaml
    echo.
    echo # Linting files
    echo .eslintcache
    echo .stylelintcache
    echo.
    echo # Optional npm cache directory
    echo .npm/
    echo.
    echo # Parcel-bundler cache
    echo .cache/
    echo.
    echo # Next.js build and cache
    echo .next/
    echo out/
    echo.
    echo # SvelteKit build
    echo .svelte-kit/
    echo.
    echo # Nuxt build and generated files
    echo .nuxt/
    echo .nuxt-dist/
    echo.
    echo # Gatsby files
    echo .cache/
    echo public/
    echo.
    echo # React Native
    echo .expo/
    echo .expo-shared/
    echo android/
    echo ios/
    echo.
    echo # Firebase files
    echo .firebaserc
    echo .firebase/
    echo firebase-debug.log
    echo.
    echo # Serverless Framework files
    echo .serverless/
    echo.
    echo # Storybook files
    echo out/
    echo storybook-static/
    echo.
    echo # Sapper build
    echo __sapper__/
    echo.
    echo # Vue.js build
    echo .vuepress/dist/
    echo .vuepress/.temp/
    echo.
    echo # Rollup cache
    echo .rpt2_cache/
    echo.
    echo # Jest
    echo jest.config.js
    echo jest/
    echo.
    echo # Cloud Provider Configurations
    echo *.aws/
    echo *.azure/
    echo *.gcloud/
    echo *.terraform/
    echo *.docker/
    echo *.ebextensions/
    echo *.elasticbeanstalk/
    echo *.serverless/
    echo.
    echo # Java
    echo *.class
    echo *.jar
    echo *.war
    echo *.ear
    echo *.iml
    echo *.project
    echo .settings/
    echo *.classpath
    echo.
    echo # Maven
    echo target/
    echo pom.xml.tag
    echo pom.xml.releaseBackup
    echo pom.xml.versionsBackup
    echo pom.xml.next
    echo release.properties
    echo.
    echo # Gradle
    echo .gradle/
    echo build/
    echo.
    echo # Eclipse
    echo .settings/
    echo .metadata/
    echo .recommenders/
    echo bin/
) > .gitignore

timeout /t 5 >nul