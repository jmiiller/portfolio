# Portfolio

A modern portfolio monorepo built with shared configuration packages and a Remix web application.

## Project Structure

This is a pnpm workspace monorepo with the following structure:

```
.
├── apps/
│   └── web/                 # Remix web application
└── packages/
    ├── eslint-config/       # Shared ESLint configuration
    ├── prettier-config/     # Shared Prettier configuration
    └── tsc-config/          # Shared TypeScript configuration
```

### Shared Configuration Packages

- **`@portfolio/eslint-config`** - Common ESLint rules and configuration
- **`@portfolio/prettier-config`** - Shared code formatting rules
- **`@portfolio/tsc-config`** - Base TypeScript compiler configuration

These packages provide consistent tooling across all applications in the monorepo.

## Development

### Prerequisites

- Node.js (latest LTS)
- pnpm (package manager)

### Getting Started

1. Install dependencies:
   ```sh
   pnpm install
   ```

2. Start the development server:
   ```sh
   pnpm dev
   ```
   
   Or run from the web app directory:
   ```sh
   cd apps/web
   npm run dev
   ```

### Available Scripts

From the root directory:
- `pnpm dev` - Start development server
- `pnpm build` - Build all applications
- `pnpm lint` - Lint all packages
- `pnpm format` - Format code in all packages
- `pnpm typecheck` - Run TypeScript type checking
- `pnpm clean` - Clean build artifacts

## Technology Stack

- **Framework**: [Remix](https://remix.run/) - Full-stack web framework
- **Styling**: [Tailwind CSS](https://tailwindcss.com/) - Utility-first CSS framework
- **TypeScript**: Strongly typed JavaScript with shared configuration
- **Build Tool**: [Vite](https://vitejs.dev/) - Fast build tool and dev server
- **Package Manager**: [pnpm](https://pnpm.io/) - Fast, disk space efficient package manager
- **Monorepo**: pnpm workspaces for managing multiple packages

## Deployment

1. Build the application:
   ```sh
   pnpm build
   ```

2. The built files will be in `apps/web/build/`:
   - `build/server` - Server-side code
   - `build/client` - Client-side assets

3. Deploy using your preferred hosting platform that supports Node.js applications.

## Configuration

### TypeScript

The web application extends the shared TypeScript configuration from `@portfolio/tsc-config`, with app-specific settings for Remix and Vite.

### Linting & Formatting

ESLint and Prettier configurations are shared across the monorepo via the respective configuration packages, ensuring consistent code style and quality.

## GitHub Setup

To set up this repository on GitHub with CI/CD and branch protection, see [GITHUB_SETUP.md](./GITHUB_SETUP.md) for detailed instructions.

### CI/CD Workflows

This repository includes GitHub Actions for:
- **Lint**: Code quality checks with ESLint
- **Type Check**: TypeScript compilation and type checking
- **Format Check**: Code formatting validation with Prettier
- **Build**: Application build verification

All checks must pass before pull requests can be merged.
