import { createAsyncThunk, createSlice } from "@reduxjs/toolkit";

export const loadAllPreviews = createAsyncThunk(
  "articlePreviews/loadAllPreviews",
  async () => {
    const data = await fetch("api/articles");
    const json = await data.json();
    return json;
  }
);

export const articlePreviewsSlice = createSlice({
  name: "articlePreviews",
  initialState: {
    articles: [],
    isLoadingArticlePreviews: false,
    hasError: false,
  },
  extraReducers: (builder) => {
    builder
      .addCase(loadAllPreviews.pending, (state) => {
        state.isLoadingArticlePreviews = true;
        state.hasError = false;
        // console.log(state.articles);
      })
      .addCase(loadAllPreviews.fulfilled, (state, action) => {
        state.isLoadingArticlePreviews = false;
        state.articles = action.payload;
        // console.log(state.articles);
      })
      .addCase(loadAllPreviews.rejected, (state, action) => {
        state.isLoadingArticlePreviews = false;
        state.hasError = true;
        state.articles = [];
        // console.log(state.articles);
      });
  },
});

export const selectAllPreviews = (state) => state.articlePreviews.articles;

export const isLoading = (state) => state.articlePreviews.isLoading;

export default articlePreviewsSlice.reducer;
