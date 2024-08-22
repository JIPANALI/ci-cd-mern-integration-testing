
import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

export async function clearDB(){
  await prisma.$transaction([
    prisma.request.deleteMany(),
  ])
}