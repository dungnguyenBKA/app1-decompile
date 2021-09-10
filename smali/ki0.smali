.class public final Lki0;
.super Lmh0;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:J

.field private final d:Lzj0;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLzj0;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lmh0;-><init>()V

    .line 2
    iput-object p1, p0, Lki0;->b:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lki0;->c:J

    .line 4
    iput-object p4, p0, Lki0;->d:Lzj0;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lki0;->c:J

    return-wide v0
.end method

.method public contentType()Lfh0;
    .locals 1

    .line 1
    iget-object v0, p0, Lki0;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lfh0;->d(Ljava/lang/String;)Lfh0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public source()Lzj0;
    .locals 1

    .line 1
    iget-object v0, p0, Lki0;->d:Lzj0;

    return-object v0
.end method
