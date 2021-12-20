const Mutation = {
  createUser(root, args, context) {
    return context.prisma.createUser({ name: args.name });
  }
};

module.exports = Mutation;
