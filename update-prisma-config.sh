echo "
secret: \${env:PRISMA_SECRET}
generate:
  - generator: javascript-client
    output: ./generated/prisma-client/
" >> prisma.yml

echo prisma config updated;