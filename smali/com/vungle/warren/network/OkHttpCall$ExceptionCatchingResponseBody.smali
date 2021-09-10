.class final Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;
.super Lmh0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/network/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExceptionCatchingResponseBody"
.end annotation


# instance fields
.field private final delegate:Lmh0;

.field thrownException:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lmh0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmh0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lmh0;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lmh0;

    invoke-virtual {v0}, Lmh0;->close()V

    return-void
.end method

.method public contentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lmh0;

    invoke-virtual {v0}, Lmh0;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lfh0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lmh0;

    invoke-virtual {v0}, Lmh0;->contentType()Lfh0;

    move-result-object v0

    return-object v0
.end method

.method public source()Lzj0;
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody$1;

    iget-object v1, p0, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lmh0;

    invoke-virtual {v1}, Lmh0;->source()Lzj0;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody$1;-><init>(Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;Lrk0;)V

    invoke-static {v0}, Lik0;->c(Lrk0;)Lzj0;

    move-result-object v0

    return-object v0
.end method

.method throwIfCaught()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->thrownException:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    throw v0
.end method
