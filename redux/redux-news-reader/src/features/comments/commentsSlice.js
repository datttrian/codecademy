// Import createAsyncThunk and createSlice here.
import { createSlice, createAsyncThunk } from "@reduxjs/toolkit";

// Create loadCommentsForArticleId here.
export const loadCommentsForArticleId = createAsyncThunk(
  'comments/loadCommentsForArticleId',
  async (id) => {
    const response = await fetch(`api/articles/${id}/comments`);
    return await response.json();
  });

// Create postCommentForArticleId here.
export const postCommentForArticleId = createAsyncThunk(
  'comments/postCommentForAricleId',
  async ({articleId, comment}) => {
    const request = await fetch(`api/articles/${articleId}/comments`, {
      method: 'POST',
      body: JSON.stringify({comment})
    });
    return await request.json();
  }
)
export const commentsSlice = createSlice({
  name: "comments",
  initialState: {
    // Add initial state properties here.
    byArticleId: {},
    isLoadingComments: false,
    failedToLoadComments: false,
    createCommentIsPending: false,
    failedToCreateComment: false
  },
  // Add extraReducers here.
  extraReducers: (builder) => {
    builder
      .addCase(loadCommentsForArticleId.pending, (state) => {
        state.isLoadingComments = true;
        state.failedToLoadComments = false;
      })
      .addCase(loadCommentsForArticleId.fulfilled, (state, action) => {
        state.byArticleId = {[action.payload.articleId]: action.payload.comments};
        state.isLoadingComments = false;
        state.failedToLoadComments = false;
      })
      .addCase(loadCommentsForArticleId.rejected, (state) => {
        state.isLoadingComments = false;
        state.failedToLoadComments = true;
      })
      .addCase(postCommentForArticleId.pending, (state) => {
        state.createCommentIsPending = true;
        state.failedToCreateComment = false;
      })
      .addCase(postCommentForArticleId.fulfilled, (state, action) => {
        state.byArticleId[action.payload.articleId].push(action.payload);
        state.createCommentIsPending = false;
        state.failedToCreateComment = false;
      })
      .addCase(postCommentForArticleId.rejected, (state) => {
        state.createCommentIsPending = false;
        state.failedToCreateComment = true;
      });
  } 
});

export const selectComments = (state) => state.comments.byArticleId;
export const isLoadingComments = (state) => state.comments.isLoadingComments;
export const createCommentIsPending = (state) => state.comments.createCommentIsPending;

export default commentsSlice.reducer;
