import { rest } from "msw";
import articlesData from "./articles.json";
import commentsData from "./comments.json";

const userComments = {};

function mockDelay(milliseconds) {
  const date = Date.now();
  let currentDate = null;
  do {
    currentDate = Date.now();
  } while (currentDate - date < milliseconds);
}

export const handlers = [
  rest.get("/api/articles", (req, res, ctx) => {
    mockDelay(500);
    return res(
      ctx.status(200),
      ctx.json(
        articlesData.map((article) => ({
          id: article.id,
          title: article.title,
          preview: article.preview,
          image: article.image,
        }))
      )
    );
  }),
  rest.get("/api/articles/:articleId", (req, res, ctx) => {
    mockDelay(500);
    const { articleId } = req.params;
    return res(
      ctx.status(200),
      ctx.json(
        articlesData.find((article) => article.id === parseInt(articleId))
      )
    );
  }),
  rest.get("/api/articles/:articleId/comments", (req, res, ctx) => {
    mockDelay(500);
    const { articleId } = req.params;
    const userCommentsForArticle = userComments[articleId] || [];
    return res(
      ctx.status(200),
      ctx.json({
        articleId: parseInt(articleId),
        comments: commentsData
          .filter((comment) => comment.articleId === parseInt(articleId))
          .concat(userCommentsForArticle),
      })
    );
  }),
  rest.post("/api/articles/:articleId/comments", (req, res, ctx) => {
    mockDelay(500);
    const { articleId } = req.params;
    const commentResponse = {
      id: commentsData.length,
      articleId: parseInt(articleId),
      text: JSON.parse(req.body).comment,
    };

    if (userComments[articleId]) {
      userComments[articleId].push(commentResponse);
    } else {
      userComments[articleId] = [commentResponse];
    }

    return res(ctx.status(200), ctx.json(commentResponse));
  }),
];
