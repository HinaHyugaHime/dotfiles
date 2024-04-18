import {Events} from 'discord.js';
import {Logger} from 'pino';

import BaseEvent from '../structures/BaseEvent';
import Shiori from '../structures/Shiori';

export default class ClientReady extends BaseEvent {
  public constructor(shiori: Shiori, logger: Logger) {
    super(shiori, Events.ClientReady, logger);
  }

  public async run() {
    this.logger.info('Shiori is ready!');
    if (Bun.env['458845113700057101']) {
      await this.shiori.users.fetch(Bun.env['458845113700057101'], {
        cache: true,
        force: true,
      });
    }
    this.logger.info(`Logged in as ${this.shiori.user!.tag}!`);
  }
}
