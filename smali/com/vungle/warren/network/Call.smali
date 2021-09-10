.class public interface abstract Lcom/vungle/warren/network/Call;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract enqueue(Lcom/vungle/warren/network/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/network/Callback<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract execute()Lcom/vungle/warren/network/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/warren/network/Response<",
            "TT;>;"
        }
    .end annotation
.end method
