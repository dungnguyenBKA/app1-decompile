.class public Lcom/vungle/warren/downloader/DownloadRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/downloader/DownloadRequest$Priority;
    }
.end annotation


# instance fields
.field private cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final cookieString:Ljava/lang/String;

.field final id:Ljava/lang/String;

.field public final networkType:I

.field public final path:Ljava/lang/String;

.field public final pauseOnConnectionLost:Z

.field private final priority:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1    # I
        .annotation build Lcom/vungle/warren/downloader/Downloader$NetworkType;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/vungle/warren/downloader/DownloadRequest$Priority;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequest;->priority:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/vungle/warren/downloader/DownloadRequest;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iput p1, p0, Lcom/vungle/warren/downloader/DownloadRequest;->networkType:I

    .line 8
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 9
    iput-object p3, p0, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    .line 12
    iput-boolean p5, p0, Lcom/vungle/warren/downloader/DownloadRequest;->pauseOnConnectionLost:Z

    .line 13
    iput-object p6, p0, Lcom/vungle/warren/downloader/DownloadRequest;->cookieString:Ljava/lang/String;

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Url or path is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/vungle/warren/downloader/DownloadRequest;-><init>(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/vungle/warren/downloader/DownloadRequest;-><init>(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequest;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public getPriority()I
    .locals 1
    .annotation build Lcom/vungle/warren/downloader/DownloadRequest$Priority;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequest;->priority:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequest;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setPriority(I)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/vungle/warren/downloader/DownloadRequest$Priority;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequest;->priority:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "DownloadRequest{networkType="

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vungle/warren/downloader/DownloadRequest;->networkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/downloader/DownloadRequest;->priority:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", path=\'"

    invoke-static {v0, v1, v2, v3}, Lic;->v(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    const-string v3, ", pauseOnConnectionLost="

    invoke-static {v0, v1, v2, v3}, Lic;->v(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/vungle/warren/downloader/DownloadRequest;->pauseOnConnectionLost:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    const-string v3, ", cookieString=\'"

    invoke-static {v0, v1, v2, v3}, Lic;->v(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/vungle/warren/downloader/DownloadRequest;->cookieString:Ljava/lang/String;

    const-string v3, ", cancelled="

    invoke-static {v0, v1, v2, v3}, Lic;->v(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/vungle/warren/downloader/DownloadRequest;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
