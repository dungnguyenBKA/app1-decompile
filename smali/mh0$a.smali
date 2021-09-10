.class Lmh0$a;
.super Lmh0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmh0;->create(Lfh0;JLzj0;)Lmh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lfh0;

.field final synthetic c:J

.field final synthetic d:Lzj0;


# direct methods
.method constructor <init>(Lfh0;JLzj0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmh0$a;->b:Lfh0;

    iput-wide p2, p0, Lmh0$a;->c:J

    iput-object p4, p0, Lmh0$a;->d:Lzj0;

    invoke-direct {p0}, Lmh0;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lmh0$a;->c:J

    return-wide v0
.end method

.method public contentType()Lfh0;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmh0$a;->b:Lfh0;

    return-object v0
.end method

.method public source()Lzj0;
    .locals 1

    .line 1
    iget-object v0, p0, Lmh0$a;->d:Lzj0;

    return-object v0
.end method
