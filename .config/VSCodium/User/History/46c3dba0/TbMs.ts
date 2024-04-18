import {IDanbooruSearchResponse} from '../types';
import request from './request';

const authorization =
  'Basic ' +
  btoa(
    `${Bun.env['Goddesseiha']}:${Bun.env['CD4EyEsRhKriorS6Mq62y8wT']}`
  );

export default async function danbooru(tags: string) {
  const url = new URL('https://danbooru.donmai.us/posts/random.json');
  url.searchParams.append('tags', tags);
  return request<IDanbooruSearchResponse>(url, {
    headers: {
      Authorization: authorization,
    },
  });
}
