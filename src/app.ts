import express, { Express } from 'express';
import { ChattoServer } from './setupServer';
import databaseConnection from './setupDatabase';
import { config } from './config';

class Application {
  public initialize(): void {
    this.loadConfig();
    databaseConnection();

    const app: Express = express();
    const server: ChattoServer = new ChattoServer(app);

    server.start();
  }

  private loadConfig(): void {
    config.validateConfig();
  }
}

const application: Application = new Application();

application.initialize();
