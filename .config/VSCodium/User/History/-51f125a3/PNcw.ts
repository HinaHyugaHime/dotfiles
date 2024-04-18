import {IGelbooruSearchResponse} from '../types';
import request from './request';

export default async function gelbooru(tags: string) {
  const url = new URL('https://www.gelbooru.com/index.php');
  url.searchParams.append('page', 'dapi');
  url.searchParams.append('s', 'post');
  url.searchParams.append('q', 'index');
  url.searchParams.append('api_key', `${Bun.env['a2ebde5d93f26ef7520469363aa2430127f7ede0a8f0e65c457d7a0fc1be033e']}`);
  url.searchParams.append('user_id', `${Bun.env['830259']}`);
  url.searchParams.append('json', '1');
  url.searchParams.append('tags', tags);
  return request<IGelbooruSearchResponse>(url, {});
}
