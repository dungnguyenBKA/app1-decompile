.class Lkh0$c;
.super Lkh0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkh0;->create(Lfh0;Ljava/io/File;)Lkh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfh0;

.field final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Lfh0;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkh0$c;->a:Lfh0;

    iput-object p2, p0, Lkh0$c;->b:Ljava/io/File;

    invoke-direct {p0}, Lkh0;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lkh0$c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lfh0;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkh0$c;->a:Lfh0;

    return-object v0
.end method

.method public writeTo(Lyj0;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lkh0$c;->b:Ljava/io/File;

    .line 2
    sget v2, Lik0;->b:I

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lik0;->h(Ljava/io/InputStream;)Lrk0;

    move-result-object v0

    .line 4
    invoke-interface {p1, v0}, Lyj0;->I(Lrk0;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v0}, Lrh0;->g(Ljava/io/Closeable;)V

    return-void

    .line 6
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-static {v0}, Lrh0;->g(Ljava/io/Closeable;)V

    throw p1
.end method
