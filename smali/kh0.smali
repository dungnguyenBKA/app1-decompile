.class public abstract Lkh0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lfh0;Lak0;)Lkh0;
    .locals 1
    .param p0    # Lfh0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    new-instance v0, Lkh0$a;

    invoke-direct {v0, p0, p1}, Lkh0$a;-><init>(Lfh0;Lak0;)V

    return-object v0
.end method

.method public static create(Lfh0;Ljava/io/File;)Lkh0;
    .locals 1
    .param p0    # Lfh0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "file == null"

    .line 11
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    new-instance v0, Lkh0$c;

    invoke-direct {v0, p0, p1}, Lkh0$c;-><init>(Lfh0;Ljava/io/File;)V

    return-object v0
.end method

.method public static create(Lfh0;Ljava/lang/String;)Lkh0;
    .locals 2
    .param p0    # Lfh0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lrh0;->i:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lfh0;->a()Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; charset=utf-8"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfh0;->d(Ljava/lang/String;)Lfh0;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lkh0;->create(Lfh0;[B)Lkh0;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lfh0;[B)Lkh0;
    .locals 2
    .param p0    # Lfh0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lkh0;->create(Lfh0;[BII)Lkh0;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lfh0;[BII)Lkh0;
    .locals 7
    .param p0    # Lfh0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "content == null"

    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lrh0;->f(JJJ)V

    .line 10
    new-instance v0, Lkh0$b;

    invoke-direct {v0, p0, p3, p1, p2}, Lkh0$b;-><init>(Lfh0;I[BI)V

    return-object v0
.end method


# virtual methods
.method public abstract contentLength()J
.end method

.method public abstract contentType()Lfh0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract writeTo(Lyj0;)V
.end method
