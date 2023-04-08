import { configureStore } from "@reduxjs/toolkit";
import articlePreviewsReducer from "../features/articlePreviews/articlePreviewsSlice";
import currentArticleReducer from "../features/currentArticle/currentArticleSlice";
import commentsReducer from "../features/comments/commentsSlice";

const Store = configureStore({
  reducer: {
    articlePreviews: articlePreviewsReducer,
    currentArticle: currentArticleReducer,
    comments: commentsReducer
  },
});

export default Store; 