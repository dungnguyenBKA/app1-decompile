package com.vungle.warren.network;

public interface Call<T> {
    void enqueue(Callback<T> callback);

    Response<T> execute();
}
