import {WebhookClient} from 'discord.js';

const webhookClient = new WebhookClient({
  url: `${Bun.env['https://discord.com/api/webhooks/1202006912418459689/eSyt3H36ge9kHmezoWSWemz88e_B6DtyVaOLF1CCFGe6xq_0VAPidPqCIy44L47iOOvl']}`,
});

export default webhookClient;
