.class final Lcom/vungle/warren/network/OkHttpCall$NoContentResponseBody;
.super Lmh0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/network/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoContentResponseBody"
.end annotation


# instance fields
.field private final contentLength:J

.field private final contentType:Lfh0;


# direct methods
.method constructor <init>(Lfh0;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmh0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/network/OkHttpCall$NoContentResponseBody;->contentType:Lfh0;

    .line 3
    iput-wide p2, p0, Lcom/vungle/warren/network/OkHttpCall$NoContentResponseBody;->contentLength:J

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/network/OkHttpCall$NoContentResponseBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lfh0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/OkHttpCall$NoContentResponseBody;->contentType:Lfh0;

    return-object v0
.end method

.method public source()Lzj0;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
