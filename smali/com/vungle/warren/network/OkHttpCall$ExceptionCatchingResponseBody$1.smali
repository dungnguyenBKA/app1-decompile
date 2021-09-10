.class Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody$1;
.super Ldk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->source()Lzj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;


# direct methods
.method constructor <init>(Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;Lrk0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody$1;->this$0:Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;

    invoke-direct {p0, p2}, Ldk0;-><init>(Lrk0;)V

    return-void
.end method


# virtual methods
.method public read(Lxj0;J)J
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ldk0;->read(Lxj0;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 2
    iget-object p2, p0, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody$1;->this$0:Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;

    iput-object p1, p2, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->thrownException:Ljava/io/IOException;

    .line 3
    throw p1
.end method
