const Query = {
  user(root, args, context) {
    return context.prisma.user({ id: args.id });
  }
};

module.exports = Query;
