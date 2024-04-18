import {MongoClient} from 'mongodb';

const mongo = new MongoClient(`${Bun.env['mongodb+srv://shiori:twkhX9zOdaZ0CBAd@cluster0.riiu4br.mongodb.net/shiori?retryWrites=true&w=majority']}`);
const mongoClient = await mongo.connect();

export default function getMongoClient(): MongoClient {
  return mongoClient;
}
