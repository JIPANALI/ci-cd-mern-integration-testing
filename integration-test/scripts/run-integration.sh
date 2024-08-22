docker-compose up -d
echo '🟡 - Waiting for database to be ready...'
./wait-for-it.sh "postgresql://postgres:mysecretpassword@localhost:5432/postgres" -- #here ./wait-for-t.shit will connect to your database
echo '🟢 - Database is ready!'
npx prisma migrate dev --name init
npm run test
docker-compose down
