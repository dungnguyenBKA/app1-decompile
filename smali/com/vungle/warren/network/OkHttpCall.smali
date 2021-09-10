.class final Lcom/vungle/warren/network/OkHttpCall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/network/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;,
        Lcom/vungle/warren/network/OkHttpCall$NoContentResponseBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/network/Call<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OkHttpCall"


# instance fields
.field private final converter:Lcom/vungle/warren/network/converters/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/warren/network/converters/Converter<",
            "Lmh0;",
            "TT;>;"
        }
    .end annotation
.end field

.field private rawCall:Log0;


# direct methods
.method constructor <init>(Log0;Lcom/vungle/warren/network/converters/Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Log0;",
            "Lcom/vungle/warren/network/converters/Converter<",
            "Lmh0;",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/network/OkHttpCall;->rawCall:Log0;

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/network/OkHttpCall;->converter:Lcom/vungle/warren/network/converters/Converter;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/network/OkHttpCall;)Lcom/vungle/warren/network/converters/Converter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/network/OkHttpCall;->converter:Lcom/vungle/warren/network/converters/Converter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/vungle/warren/network/OkHttpCall;Llh0;Lcom/vungle/warren/network/converters/Converter;)Lcom/vungle/warren/network/Response;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/network/OkHttpCall;->parseResponse(Llh0;Lcom/vungle/warren/network/converters/Converter;)Lcom/vungle/warren/network/Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/warren/network/OkHttpCall;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private parseResponse(Llh0;Lcom/vungle/warren/network/converters/Converter;)Lcom/vungle/warren/network/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llh0;",
            "Lcom/vungle/warren/network/converters/Converter<",
            "Lmh0;",
            "TT;>;)",
            "Lcom/vungle/warren/network/Response<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Llh0;->j()Lmh0;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Llh0;->k0()Llh0$a;

    move-result-object p1

    new-instance v1, Lcom/vungle/warren/network/OkHttpCall$NoContentResponseBody;

    .line 3
    invoke-virtual {v0}, Lmh0;->contentType()Lfh0;

    move-result-object v2

    invoke-virtual {v0}, Lmh0;->contentLength()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/vungle/warren/network/OkHttpCall$NoContentResponseBody;-><init>(Lfh0;J)V

    invoke-virtual {p1, v1}, Llh0$a;->b(Lmh0;)Llh0$a;

    .line 4
    invoke-virtual {p1}, Llh0$a;->c()Llh0;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Llh0;->L()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_3

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;

    invoke-direct {v1, v0}, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;-><init>(Lmh0;)V

    .line 7
    :try_start_0
    invoke-interface {p2, v1}, Lcom/vungle/warren/network/converters/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/vungle/warren/network/Response;->success(Ljava/lang/Object;Llh0;)Lcom/vungle/warren/network/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {v1}, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->throwIfCaught()V

    .line 9
    throw p1

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lmh0;->close()V

    const/4 p2, 0x0

    .line 11
    invoke-static {p2, p1}, Lcom/vungle/warren/network/Response;->success(Ljava/lang/Object;Llh0;)Lcom/vungle/warren/network/Response;

    move-result-object p1

    return-object p1

    .line 12
    :cond_3
    :goto_1
    :try_start_1
    new-instance p2, Lxj0;

    invoke-direct {p2}, Lxj0;-><init>()V

    .line 13
    invoke-virtual {v0}, Lmh0;->source()Lzj0;

    move-result-object v1

    invoke-interface {v1, p2}, Lzj0;->Y(Lqk0;)J

    .line 14
    invoke-virtual {v0}, Lmh0;->contentType()Lfh0;

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Lmh0;->contentLength()J

    move-result-wide v2

    .line 16
    invoke-static {v1, v2, v3, p2}, Lmh0;->create(Lfh0;JLzj0;)Lmh0;

    move-result-object p2

    .line 17
    invoke-static {p2, p1}, Lcom/vungle/warren/network/Response;->error(Lmh0;Llh0;)Lcom/vungle/warren/network/Response;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-virtual {v0}, Lmh0;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lmh0;->close()V

    throw p1
.end method


# virtual methods
.method public enqueue(Lcom/vungle/warren/network/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/network/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/OkHttpCall;->rawCall:Log0;

    new-instance v1, Lcom/vungle/warren/network/OkHttpCall$1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/network/OkHttpCall$1;-><init>(Lcom/vungle/warren/network/OkHttpCall;Lcom/vungle/warren/network/Callback;)V

    invoke-interface {v0, v1}, Log0;->o(Lpg0;)V

    return-void
.end method

.method public execute()Lcom/vungle/warren/network/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/warren/network/Response<",
            "TT;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/network/OkHttpCall;->rawCall:Log0;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {v0}, Log0;->execute()Llh0;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/network/OkHttpCall;->converter:Lcom/vungle/warren/network/converters/Converter;

    invoke-direct {p0, v0, v1}, Lcom/vungle/warren/network/OkHttpCall;->parseResponse(Llh0;Lcom/vungle/warren/network/converters/Converter;)Lcom/vungle/warren/network/Response;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
